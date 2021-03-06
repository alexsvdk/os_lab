import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:server_1/module/providers.dart';

class TitleText extends HookConsumerWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final title = ref.watch(titleStateProvider);
    ref.watch(titleChangerProvider);

    useEffect(() {
      doWhenWindowReady(() {
        appWindow.title = title;
      });
    }, [title]);

    return Text(title);
  }
}
