import 'package:flutter/material.dart';
import 'package:flutter_sample_provider/application/state/Counter.dart';
import 'package:provider/provider.dart';

import '../presentation/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(
          create: (_) => Counter(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
