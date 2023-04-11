import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/state/Counter.dart';

class TextWidgetB extends StatelessWidget {
  const TextWidgetB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Built TextWidgetB');

    return Center(
        child: Text(
            'Counter B: ${context.read<Counter>().countB}',
            style: const TextStyle(
                fontSize: 20
            )
        )
    );
  }
}