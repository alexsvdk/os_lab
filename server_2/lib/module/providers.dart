import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_2/models/server_state.dart';
import 'package:server_2/module/server.dart';
import 'package:server_2/module/swap_provider.dart';

final titleStateProvider = StateProvider((_) => 'Title');

final serverStateProvider = StateProvider<ServerState?>((_) => null);

final serverProvider = Provider((ref) {
  final server = Server(
    ref.watch(serverStateProvider.notifier),
  );
  ref.onDispose(server.dispose);
  return server;
});

final swapProvider = Provider((ref) {
  final res = SwapProvider(ref.watch(serverProvider));
  ref.onDispose(res.dispose);
  res.init();
  return res;
});
