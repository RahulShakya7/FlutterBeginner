import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: Container(
      //   color: Colors.black,
      //   width: double.infinity,
      //   child: const Text(
      //     "My name is Heisenberg",
      //     style: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: RichText(
        text: const TextSpan(
            text: 'My',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 40,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'name is',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                  text: "Heisenberg",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                  ))
            ]),
      ),
    );
  }
}
