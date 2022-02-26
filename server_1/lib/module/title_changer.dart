import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/module/server.dart';

class TitleChanger {
  final Server _server;
  final StateController<String> _titleState;

  StreamSubscription _serverSub;

  TitleChanger(this._server, this._titleState)
      : _serverSub = _server.messageStream.listen((event) {
          Message? message;
          try {
            if (event.value.dataType == DataType.renameRequest) {
              final request = RenameRequest.fromJson(event.value.data!);
              _titleState.state = request.name;
              message = Message(MessageType.data,
                  dataType: DataType.renameResponse,
                  data: const RenameResponse(true).toJson());
            }
          } catch (e) {
            message = Message(MessageType.data,
                dataType: DataType.renameResponse,
                data: const RenameResponse(false).toJson());
          }
          if (message != null) {
            final json = jsonEncode(message.toJson());
            event.key.write(json);
          }
        });

  void dispose() {
    _serverSub.cancel();
  }
}
