import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/module/providers.dart';

class ServerStatus extends HookConsumerWidget {
  const ServerStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final portController = useTextEditingController(text: '5898');
    final serverState = ref.watch(serverStateProvider);
    final isActive = serverState != null;
    final leastOkPort = useState(5898);

    final textTheme = Theme.of(context).textTheme;

    return LayoutBuilder(builder: (context, _) {
      final size = appWindow.size;
      ref.read(windowSizeProvider).notifySizeChanged(size);
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Color.lerp((isActive ? Colors.green : Colors.red),
                      Colors.black, 0.5),
                  borderRadius: BorderRadius.circular(24)),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.white),
                child: Column(children: [
                  Text(
                    'Сервер #1',
                    style: textTheme.headline3?.copyWith(color: Colors.white),
                  ),
                  Text('Состояние: ' + (isActive ? 'Включен' : 'Выключен')),
                ]),
              ),
            ),
            if (isActive) ...[
              Column(
                children: [
                  const Text('IP для подключения:'),
                  ...(serverState.ip.map((e) => Text(e)).toList())
                ],
              ),
              Text('Количество клиентов: ${serverState.connection}'),
            ],
            Row(
              children: [
                Text('Порт:'),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextField(
                    controller: portController,
                    enabled: !isActive,
                    decoration: const InputDecoration(
                      hintText: 'Порт',
                    ),
                    onChanged: (value) {
                      final newInt = int.tryParse(value);
                      if (newInt != null) {
                        leastOkPort.value = newInt;
                      } else {
                        portController.text = '${leastOkPort.value}';
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                MaterialButton(
                    child: Text(isActive ? 'Стоп' : 'Старт'),
                    onPressed: () {
                      if (isActive) {
                        ref.read(serverProvider).stop();
                      } else {
                        ref
                            .read(serverProvider)
                            .start(int.parse(portController.text));
                        ref.read(windowSizeProvider);
                      }
                    }),
              ],
            )
          ],
        ),
      );
    });
  }
}
