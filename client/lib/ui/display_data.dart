import 'package:client/module/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplayDataWidget extends ConsumerWidget {
  const DisplayDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(displayInfoProvider);
    final data = ref.watch(displayInfoStateHolder);
    return Column(
      children: [
        Text('Размер окна:'),
        Text('${data?.width} X ${data?.height}'),
      ],
    );
  }
}
