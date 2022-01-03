import 'dart:async';

import 'package:client/module/server_connector.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class DisplayInfoProvider {
  final ServerConnector _serverConnector;
  final StateController<DisplayInfo?> _stateHolder;

  DisplayInfoProvider(this._serverConnector, this._stateHolder);

  late StreamSubscription _serverSub;

  void init() {
    _serverSub = _serverConnector.messageStream
        .where((e) => e.dataType == DataType.displayInfo)
        .listen(_handleMessage);
  }

  void _handleMessage(Message message) {
    final data = DisplayInfo.fromJson(message.data!);
    _stateHolder.state = data;
  }

  void dispose() {
    _serverSub.cancel();
  }
}
