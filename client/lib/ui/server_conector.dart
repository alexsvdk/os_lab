import 'package:client/module/server_connector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ServerConnectorWidget extends HookWidget {
  final ServerConnector serverConnector;
  final String name;
  final String defPort;
  const ServerConnectorWidget({
    required this.serverConnector,
    required this.name,
    this.defPort = '5898',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: 'localhost:$defPort');
    final connection = useState<String?>(null);
    useEffect(() => serverConnector.currentConnection.listen((final str) {
          connection.value = str;
          if (str != null) {
            controller.text = str;
          }
        }).cancel);
    final isConnected = connection.value != null;
    return Theme(
      data: ThemeData.dark(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isConnected ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            TextField(
              controller: controller,
              decoration:
                  const InputDecoration.collapsed(hintText: 'host:port'),
            ),
            const Divider(
              color: Colors.white,
            ),
            MaterialButton(
              onPressed: () {
                if (isConnected) {
                  serverConnector.disconnect();
                } else {
                  serverConnector.connect(controller.text);
                }
              },
              child: Text(isConnected ? 'Отключиться' : 'Подключиться'),
            ),
          ],
        ),
      ),
    );
  }
}
