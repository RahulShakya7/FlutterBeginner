import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("About us"),
        ),
        body: Center(
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {},
            child: const Text("About us"),
          ),
        ));
  }
}
