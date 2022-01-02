import 'dart:async';
import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:server_1/module/server.dart';
import 'package:rxdart/rxdart.dart';

class WindowSizeProvider {
  final Server _server;

  final _sizeStream = BehaviorSubject<Size>();
  late final StreamSubscription _serverSub;
  ValueStream<Size> get sizeStream => _sizeStream.stream;

  WindowSizeProvider(
    this._server,
  ) {
    sizeStream
        .throttle((_) => TimerStream(true, const Duration(seconds: 1)))
        .listen((size) {
      final displayInfo = DisplayInfo(size.width.toInt(), size.height.toInt());
      final message = Message(MessageType.data,
          dataType: DataType.displayInfo, data: displayInfo.toJson());
      _server.writeAll(message);
    });
    _serverSub = _server.messageStream.listen((data) {
      final message = data.value;
      if (message.messageType == MessageType.hi) {
        final size = sizeStream.valueOrNull;
        if (size != null) {
          final displayInfo =
              DisplayInfo(size.width.toInt(), size.height.toInt());
          final message = Message(MessageType.data,
              dataType: DataType.displayInfo, data: displayInfo.toJson());
          data.key.write(jsonEncode(message.toJson()));
        }
      }
    });
  }

  void notifySizeChanged(Size size) {
    _sizeStream.add(size);
  }

  void dispose() {
    _sizeStream.close();
    _serverSub.cancel();
  }
}
