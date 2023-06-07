import 'package:flutter/material.dart';
import 'package:student_clean_arch/view/login.dart';
import 'package:student_clean_arch/view/register.dart';

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
        '/': (context) => const RegisterView(),
        '/loginRoute': (context) => const LoginView()
      },
    );
  }
}
