import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/ui/server_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Server 1',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ServerScreen(),
      ),
    );
  }
}
