import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/state/Counter.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            ChangeNotifierProvider(
              create: (_) => Counter(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CounterTextWidget(),
                  ButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}