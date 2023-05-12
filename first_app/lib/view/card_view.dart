import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i < 11; i++)
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Card(
                    color: Colors.cyan,
                    child: Center(
                      child: Text("Inside Card $i",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
