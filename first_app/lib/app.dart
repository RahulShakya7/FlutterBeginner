import 'package:first_app/view/container_view.dart';
import 'package:first_app/view/load_image.dart';
import 'package:first_app/view/new.dart';
import 'package:first_app/view/output_screen.dart';
import 'package:flutter/material.dart';

import 'view/arithmatic_view.dart';
import 'view/card_view.dart';
import 'view/center_name.dart';
import 'view/circle_area.dart';
import 'view/class_exercise.dart';
import 'view/column_view.dart';
import 'view/dashboard.dart';
import 'view/data_view.dart';
import 'view/grid_view_screen.dart';
import 'view/media_query_view.dart';
import 'view/new_app.dart';
import 'view/register_view.dart';
import 'view/rich_text.dart';
import 'view/si_view.dart';
import 'view/stack_view.dart';

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
        '/richtextRoute': (context) => const RichTextView(),
        '/columnRoute': (context) => const ColumnView(),
        '/outputSRoute': (context) => const OutputScreenView(),
        '/containerRoute': (context) => const ContainerView(),
        '/loadimagesRoute': (context) => const LoadImageView(),
        '/registerRoute': (context) => const RegisterView(),
        '/mediaRoute': (context) => const MediaQueryView(),
        '/flexRoute': (context) => const TabletView(),
        '/cardRoute': (context) => const CardView(),
        '/gridRoute': (context) => const GridScreenView(),
        '/stackRoute': (context) => const StackView(),
        '/appRoute': (context) => const NewAppView(),
        '/newRoute': (context) => const NewView(),
        '/dataRoute': (context) => const DataTableView(),
      },
    );
  }
}
