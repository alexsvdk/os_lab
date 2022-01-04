import 'package:client/module/display.dart';
import 'package:client/module/renamer.dart';
import 'package:client/module/server_connector.dart';
import 'package:client/module/swap.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final server1Provider = Provider((ref) {
  final res = ServerConnector();
  ref.onDispose(res.dispose);
  return res;
});

final server2Provider = Provider((ref) {
  final res = ServerConnector();
  ref.onDispose(res.dispose);
  return res;
});

final renamerStateHolder =
    StateProvider<AsyncValue<RenameResponse>>((_) => const AsyncLoading());
final renamerProvider = Provider((ref) {
  final res = Renamer(
      ref.watch(server1Provider), ref.watch(renamerStateHolder.notifier));
  ref.onDispose(res.dispose);
  res.init();
  return res;
});

final displayInfoStateHolder = StateProvider<DisplayInfo?>((_) => null);
final displayInfoProvider = Provider((ref) {
  final res = DisplayInfoProvider(
      ref.watch(server1Provider), ref.watch(displayInfoStateHolder.notifier));
  ref.onDispose(res.dispose);
  res.init();
  return res;
});

final swapInfoStateHolder = StateProvider<SwapInfo?>((_) => null);
final swapInfoProvider = Provider((ref) {
  final res = SwapInfoProvider(
      ref.watch(server2Provider), ref.watch(swapInfoStateHolder.notifier));
  ref.onDispose(res.dispose);
  res.init();
  return res;
});
