import 'package:client/module/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SwapPage extends ConsumerWidget {
  const SwapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final swapinfo = ref.watch(swapInfoStateHolder);
    ref.watch(swapInfoProvider);
    return Column(
      children: [
        Text("Свободное место:"),
        Text('${swapinfo?.freeSpace}'),
        Text("Всего места:"),
        Text('${swapinfo?.swapSize}'),
      ],
    );
  }
}
