import 'package:flutter/material.dart';
import 'package:server_1/ui/status.dart';
import 'package:server_1/ui/title_text.dart';

class ServerScreen extends StatelessWidget {
  const ServerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleText(),
      ),
      body: const ServerStatus(),
    );
  }
}
