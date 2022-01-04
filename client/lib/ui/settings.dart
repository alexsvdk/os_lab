import 'package:client/module/providers.dart';
import 'package:client/module/server_connector.dart';
import 'package:client/ui/server_conector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ServerConnectorWidget(
          name: 'Сервер - 1',
          serverConnector: ref.watch(server1Provider),
        ),
        ServerConnectorWidget(
          defPort: '5899',
          name: 'Сервер - 2',
          serverConnector: ref.watch(server2Provider),
        ),
      ],
    );
  }
}
