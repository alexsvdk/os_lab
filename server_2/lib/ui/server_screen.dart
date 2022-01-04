import 'package:flutter/material.dart';
import 'package:server_2/ui/status.dart';

class ServerScreen extends StatelessWidget {
  const ServerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ServerStatus(),
    );
  }
}
