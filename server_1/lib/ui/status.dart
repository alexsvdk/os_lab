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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Сервер #1'),
        Text('Состояние: ' + (isActive ? 'Включен' : 'Выключен')),
        TextField(
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
        MaterialButton(
            child: Text(isActive ? 'Стоп' : 'Старт'),
            onPressed: () {
              if (isActive) {
                ref.read(serverProvider).stop();
              } else {
                ref.read(serverProvider).start(int.parse(portController.text));
                ref.read(titleChangerProvider);
              }
            }),
      ],
    );
  }
}
