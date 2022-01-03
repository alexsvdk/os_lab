import 'package:client/ui/renamer.dart';
import 'package:flutter/material.dart';

import 'display_data.dart';

class DiaplayPage extends StatelessWidget {
  const DiaplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RenamerWidget(),
        DisplayDataWidget(),
      ],
    );
  }
}
