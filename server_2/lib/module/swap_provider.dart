import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:core/core.dart';
import 'package:rxdart/rxdart.dart';
import 'package:server_2/module/server.dart';
import 'package:supercharged/supercharged.dart';

class SwapProvider {
  final Server _server;

  final _swapStream = BehaviorSubject<SwapInfo>();

  late final Timer _timer;
  late final StreamSubscription _serverSub;
  ValueStream<SwapInfo> get swapStream => _swapStream.stream;

  SwapProvider(
    this._server,
  );

  void init() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _fetchSwap());
    _serverSub = _server.messageStream.listen((e) {
      if (e.value.messageType != MessageType.hi) {
        return;
      }
      final swapInfo = _swapStream.valueOrNull;
      if (swapInfo == null) {
        return;
      }
      final message = Message(MessageType.data,
          dataType: DataType.swapinfo, data: swapInfo.toJson());
      final encoded = jsonEncode(message.toJson());
      e.key.write(encoded);
    });
  }

  Future<void> _fetchSwap() async {
    final SwapInfo swapInfo;
    if (Platform.isMacOS) {
      swapInfo = await _getMacSwap();
    } else {
      return;
    }
    _swapStream.add(swapInfo);
    final message = Message(MessageType.data,
        dataType: DataType.swapinfo, data: swapInfo.toJson());
    _server.writeAll(message);
  }

  Future<SwapInfo> _getMacSwap() async {
    final res = await Process.run('sysctl', ['vm.swapusage']);
    final out = res.stdout as String;
    bool eq = false;
    final nums = <String>[];
    out.split(' ').forEach((str) {
      if (eq) {
        nums.add(str);
      }
      if (str == '=') {
        eq = true;
      } else {
        eq = false;
      }
    });
    return SwapInfo(
      nums[0],
      nums[2],
    );
  }

  void dispose() {
    _swapStream.close();
    _timer.cancel();
    _serverSub.cancel();
  }
}
