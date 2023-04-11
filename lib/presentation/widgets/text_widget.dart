import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/state/Counter.dart';

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Built CounterTextWidget');

    return Center(
        child: Text(
            'Counter: ${context.watch<Counter>().count}',
            style: const TextStyle(
                fontSize: 20
            )
        )
    );
  }
}