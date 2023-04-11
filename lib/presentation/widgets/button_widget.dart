import 'package:flutter/material.dart';
import 'package:flutter_sample_provider/application/state/Counter.dart';
import 'package:provider/provider.dart';

class ButtonWidgetA extends StatelessWidget {
  const ButtonWidgetA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      context.read<Counter>().incrementCounterA();
    }, child: const Text('increment A'));
  }
}

class ButtonWidgetB extends StatelessWidget {
  const ButtonWidgetB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      context.read<Counter>().incrementCounterB();
    }, child: const Text('increment B'));
  }
}

class ButtonWidgetC extends StatelessWidget {
  const ButtonWidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      context.read<Counter>().incrementCounterC();
    }, child: const Text('increment C'));
  }
}