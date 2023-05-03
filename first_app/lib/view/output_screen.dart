import 'package:flutter/material.dart';

class OutputScreenView extends StatefulWidget {
  const OutputScreenView({super.key});

  @override
  State<OutputScreenView> createState() => _OutputScreenViewState();
}

class _OutputScreenViewState extends State<OutputScreenView> {
  int? result;

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as int?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // result = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Result is $result',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
