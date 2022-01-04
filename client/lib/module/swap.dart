import 'dart:async';

import 'package:client/module/server_connector.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class SwapInfoProvider {
  final ServerConnector _serverConnector;
  final StateController<SwapInfo?> _stateHolder;

  SwapInfoProvider(this._serverConnector, this._stateHolder);

  late StreamSubscription _serverSub;

  void init() {
    _serverSub = _serverConnector.messageStream
        .where((e) => e.dataType == DataType.swapinfo)
        .listen(_handleMessage);
  }

  void _handleMessage(Message message) {
    final data = SwapInfo.fromJson(message.data!);
    _stateHolder.state = data;
  }

  void dispose() {
    _serverSub.cancel();
  }
}
