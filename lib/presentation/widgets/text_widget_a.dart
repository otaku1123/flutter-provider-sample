import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/state/Counter.dart';

class TextWidgetA extends StatelessWidget {
  const TextWidgetA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Built TextWidgetA');

    return Center(
        child: Text(
            'Counter A: ${context.watch<Counter>().countA}',
            style: const TextStyle(
                fontSize: 20
            )
        )
    );
  }
}