import 'dart:async';

import 'package:client/module/server_connector.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class Renamer {
  final ServerConnector _serverConnector;
  final StateController<AsyncValue<RenameResponse>> _stateHolder;

  Renamer(this._serverConnector, this._stateHolder);

  Completer<RenameResponse>? _completer;
  late StreamSubscription _serverSub;

  void init() {
    _serverSub = _serverConnector.messageStream.listen(_handleMessage);
  }

  void _handleMessage(Message message) {
    if (message.dataType != DataType.renameResponse) {
      return;
    }
    final res = RenameResponse.fromJson(message.data!);
    _completer?.complete(res);
    _completer = null;
    _stateHolder.state = AsyncData(res);
  }

  Future<RenameResponse> renameWindow(String name) async {
    if (_completer == null) {
      _stateHolder.state = const AsyncLoading();
      _completer = Completer();
      final message = Message(MessageType.data,
          dataType: DataType.renameRequest, data: RenameRequest(name).toJson());
      _serverConnector.sendMessage(message);
    }
    return _completer!.future;
  }

  void dispose() {
    _serverSub.cancel();
  }
}
