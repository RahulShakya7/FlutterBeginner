import 'package:flutter/material.dart';

// const - compile time
// final - run time

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  int principle = 0;
  double rate = 0;
  double time = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onChanged: (value) => {
                principle = int.parse(value),
              },
              decoration: const InputDecoration(
                labelText: 'Enter the Principle.',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) => {
                time = double.tryParse(value) ?? 0,
              },
              decoration: const InputDecoration(
                labelText: 'Enter the Time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              onChanged: (value) => {
                rate = double.tryParse(value) ?? 0,
              },
              decoration:const InputDecoration(
                labelText: 'Enter the rate',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (principle * rate * time) / 100;
                });
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 16),
            Text(
              'Simple Interest is $result',
              style: const TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
