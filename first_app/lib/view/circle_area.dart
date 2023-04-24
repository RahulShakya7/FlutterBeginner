// import 'package:first_app/model/arithmatic.dart';
import 'package:first_app/model/circle.dart';
import 'package:flutter/material.dart';

class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  double radius = 0;
  double area = 0;

  late CircleArea circlearea;

  void areaC() {
    setState(() {
      circlearea = CircleArea();
      area = circlearea.areaC(radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  radius = double.tryParse(value) ?? 0;
                },
                decoration: const InputDecoration(
                  labelText: 'Enter the Radius',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    areaC();
                  });
                },
                child: const Text('Area of Circle'),
              ),
              const SizedBox(height: 16),
              Text(
                'Area of cirlce is : $area',
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
