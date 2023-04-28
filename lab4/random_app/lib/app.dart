import 'package:flutter/material.dart';
import 'package:random_app/view/quiz_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const RandomNumberView(),
      },
    );
  }
}
