import 'package:client/module/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RenamerWidget extends HookConsumerWidget {
  const RenamerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final renamer = ref.watch(renamerProvider);
    final textController = useTextEditingController();
    return Column(
      children: [
        Text('Изменить заголовок окна'),
        TextField(
          controller: textController,
        ),
        MaterialButton(
          onPressed: () => renamer.renameWindow(textController.text),
          child: Text('Переименовать'),
        ),
      ],
    );
  }
}
