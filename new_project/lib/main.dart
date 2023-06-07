import 'package:flutter/material.dart';
import 'package:new_project/themes/app_theme.dart';
import 'package:new_project/view/aboutus.dart';
import 'package:new_project/view/dashboard.dart';
import 'package:new_project/view/home.dart';
import 'package:new_project/view/profile.dart';
import 'package:new_project/view/shared_preference.dart';
import 'package:new_project/view/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavBar',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashBoardView(),
        '/homeRoute': (context) => const HomeView(),
        '/profileRoute': (context) => const ProfileView(),
        '/aboutRoute': (context) => const AboutUsView(),
        '/testRoute': (context) => const TestView(),
        '/sharedprefRoute': (context) => const SharedPreference()
      },
    );
  }
}
