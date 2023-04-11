import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/state/Counter.dart';

class TextWidgetC extends StatelessWidget {
  const TextWidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Built TextWidgetC');

    return Center(
        child: Text(
            'Counter C: ${context.select((Counter counter) => counter.countC)}',
            style: const TextStyle(
                fontSize: 20
            )
        )
    );
  }
}