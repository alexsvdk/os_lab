import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/models/server_state.dart';
import 'package:server_1/module/server.dart';
import 'package:server_1/module/window_size_provider.dart';

import 'title_changer.dart';

final titleStateProvider = StateProvider((_) => 'Title');

final serverStateProvider = StateProvider<ServerState?>((_) => null);

final serverProvider = Provider((ref) {
  final server = Server(
    ref.watch(serverStateProvider.notifier),
  );
  ref.onDispose(server.dispose);
  return server;
});

final windowSizeProvider = Provider((ref) {
  final provider = WindowSizeProvider(ref.watch(serverProvider));
  ref.onDispose(provider.dispose);
  return provider;
});

final titleChangerProvider = Provider((ref) {
  final provider = TitleChanger(
      ref.watch(serverProvider), ref.watch(titleStateProvider.notifier));
  ref.onDispose(provider.dispose);
  return provider;
});
