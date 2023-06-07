import 'package:calculator_app/view/calculator_view.dart';
import 'package:calculator_app/view/image.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const CalculatorView(),
        '/imageRoute': (context) => const ImagePrintView(),
      },
    );
  }
}
