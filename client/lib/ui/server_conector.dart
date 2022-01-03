import 'package:client/module/server_connector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ServerConnectorWidget extends HookWidget {
  final ServerConnector serverConnector;
  const ServerConnectorWidget({
    required this.serverConnector,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: 'localhost:5898');
    final connection = useState<String?>(null);
    useEffect(() => serverConnector.currentConnection.listen((final str) {
          connection.value = str;
          if (str != null) {
            controller.text = str;
          }
        }).cancel);
    final isConnected = connection.value != null;
    return Container(
      child: Column(
        children: [
          Text('Сервер 1'),
          TextField(
            controller: controller,
          ),
          MaterialButton(
            onPressed: () => serverConnector.connect(controller.text),
            child: Text(isConnected ? 'Отключиться' : 'Подключиться'),
          ),
        ],
      ),
    );
  }
}
