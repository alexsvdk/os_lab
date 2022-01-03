import 'package:client/module/providers.dart';
import 'package:client/module/server_connector.dart';
import 'package:client/ui/server_conector.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ServerConnectorWidget(
      serverConnector: ref.watch(server1Provider),
    );
  }
}
