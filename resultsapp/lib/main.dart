import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'view/result.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'Result',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const StudentResultView(),
        },
      ),
    ),
  );
}
