import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  Widget display(String title) {
    return GestureDetector(
      onTap: () {
        // print("hello");
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: Colors.cyan,
          child: Center(
            child: Text(title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return display("Hello $index");
        },
      ),
    );
  }
}
