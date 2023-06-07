import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns"),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.donut_large,
                    size: 50,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.donut_large,
                    size: 50,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.donut_large,
                    size: 50,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.donut_large,
                    size: 50,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.donut_large,
                    size: 50,
                    color: Colors.amberAccent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.electric_bike,
                    size: 50,
                    color: Colors.green,
                  ),
                  // Spacer(),
                  Icon(
                    Icons.electric_bike,
                    size: 50,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.electric_bike,
                    size: 50,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.electric_bike,
                    size: 50,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.catching_pokemon_outlined,
            size: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
