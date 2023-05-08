import 'package:flutter/material.dart';

void showmessage(BuildContext context, String message,
    {Color color = Colors.green}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    content: Text(message.toString()),
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
  ));
}
