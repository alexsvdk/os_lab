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
  Timer? _timeout;
  late StreamSubscription _serverSub;

  void init() {
    _serverSub = _serverConnector.messageStream.listen(_handleMessage);
  }

  void _handleMessage(Message message) {
    if (message.dataType != DataType.renameResponse) {
      return;
    }
    final res = RenameResponse.fromJson(message.data!);
    _timeout?.cancel();
    _timeout = null;
    _completer?.complete(res);
    _completer = null;
    _stateHolder.state = AsyncData(res);
  }

  Future<RenameResponse> renameWindow(String name) async {
    if (_completer == null) {
      _stateHolder.state = const AsyncLoading();
      _completer = Completer();
      _timeout = Timer(const Duration(seconds: 1), () {
        _completer?.completeError(TimeoutException(''));
        _completer = null;
        _timeout = null;
      });
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
