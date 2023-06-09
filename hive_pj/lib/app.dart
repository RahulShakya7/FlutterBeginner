import 'package:flutter/material.dart';
import 'package:hive_pj/features/home/presentation/view/register.dart';

import 'features/home/presentation/view/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Details',
      initialRoute: '/',
      routes: {
        '/': (context) => const LogInView(),
        '/registerRoute': (context) => const RegisterView(),
      },
    );
  }
}
