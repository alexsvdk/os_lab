import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:rxdart/rxdart.dart';

class ServerConnector {
  Socket? _socket;
  StreamSubscription? _socketSub;

  final _messageStream = StreamController<Message>.broadcast();
  Stream<Message> get messageStream => _messageStream.stream;

  final _currentConnection = BehaviorSubject<String?>();
  ValueStream<String?> get currentConnection => _currentConnection.stream;

  void sendMessage(Message message) {
    if (_socket == null) return;
    final encoded = jsonEncode(message.toJson());
    _socket?.write(encoded);
  }

  Future<void> connect(String connectionStr) async {
    disconnect();
    final host = connectionStr.split(':').first;
    final port = int.parse(connectionStr.split(':').last);
    _socket = await Socket.connect(host, port);
    _socketSub = _socket?.listen(_receiveData);
    _currentConnection.add(connectionStr);
  }

  void disconnect() {
    sendMessage(Message.bye);
    _socketSub?.cancel();
    _socket?.close();
    _socketSub = null;
    _socket = null;
    _currentConnection.add(null);
  }

  void _receiveData(Uint8List data) {
    final messsage = Message.fromRaw(data);
    _messageStream.add(messsage);
  }

  void dispose() {
    disconnect();
    _messageStream.close();
  }
}
