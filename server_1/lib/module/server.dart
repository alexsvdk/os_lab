import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/models/server_state.dart';

class Server {
  final StateController<ServerState?> serverState;

  Server(this.serverState);

  final _clients = <Socket>{};
  final _messageStream =
      StreamController<MapEntry<Socket, Message>>.broadcast();
  ServerSocket? _socket;

  Stream<MapEntry<Socket, Message>> get messageStream => _messageStream.stream;

  Future<void> start(int port) async {
    _socket = await ServerSocket.bind(InternetAddress.anyIPv4, port);
    _socket?.listen(_handleClient);

    final ip = (await NetworkInterface.list())
        .expand((e) => e.addresses)
        .map((e) => e.address)
        .toList();

    serverState.state = ServerState(ip, port);
  }

  Future<void> stop() async {
    while (_clients.isNotEmpty) {
      _removeClient(_clients.first);
    }
    _socket?.close();
    _socket = null;
    serverState.state = null;
  }

  Future<void> dispose() async {
    await stop();
    _messageStream.close();
  }

  void _handleClient(Socket client) {
    _clients.add(client);
    client.listen(
      _handleData(client),
      onError: () => _removeClient(client),
      onDone: () => _removeClient(client),
    );
  }

  void writeAll(Message message) {
    final encoded = jsonEncode(message.toJson());
    _clients.forEach((client) {
      try {
        client.write(encoded);
      } catch (e) {}
    });
  }

  void _removeClient(Socket client) {
    try {
      client.write(Message.bye);
    } catch (e) {
    } finally {
      client.close();
      _clients.remove(client);
      serverState.state =
          serverState.state?.copyWith(connection: _clients.length);
    }
  }

  Function(Uint8List data) _handleData(Socket socket) => (Uint8List data) {
        final message = Message.fromRaw(data);
        _messageStream.add(MapEntry(socket, message));
      };
}
