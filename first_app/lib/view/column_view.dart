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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
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
                children: const [
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
          const Icon(
            Icons.catching_pokemon_outlined,
            size: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
