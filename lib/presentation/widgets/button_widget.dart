import 'package:flutter/material.dart';
import 'package:flutter_sample_provider/application/state/Counter.dart';
import 'package:provider/provider.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      context.read<Counter>().increment();
    }, child: const Text('increment'));
  }
}
