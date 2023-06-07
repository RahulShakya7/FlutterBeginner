import 'package:flutter/material.dart';

class GridScreenView extends StatelessWidget {
  const GridScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 5,
          mainAxisSpacing: 2,
          crossAxisCount: 2,
          children: [
            for (int i = 1; i < 5; i++)
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Card(
                  color: Colors.cyan,
                  child: Center(
                    child: Text("Box $i",
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
    );
  }
}
