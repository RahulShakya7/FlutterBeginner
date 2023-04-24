import 'package:first_app/model/circle.dart';
import 'package:first_app/view/arithmatic_view.dart';
import 'package:first_app/view/center_name.dart';
import 'package:first_app/view/circle_area.dart';
import 'package:first_app/view/dashboard.dart';
import 'package:first_app/view/si_view.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       debugShowCheckedModeBanner: false, home: ArithmeticView());
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       debugShowCheckedModeBanner: false, home: SimpleInterest());
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Routing
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/arithmaticRoute': (context) => const ArithmeticView(),
        '/siRoute': (context) => const SimpleInterestView(),
        '/areaCRoute': (context) => const CircleView(),
        '/nameRoute': (context) => const NameView(),
      },
    );
  }
}
