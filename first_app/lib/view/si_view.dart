import 'package:flutter/material.dart';

// const - compile time
// final - run time

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  final principleController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();
  // int principle = 0;
  // double rate = 0;
  // double time = 0;
  double result = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    principleController.dispose();
    rateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  void si() {
    result = (double.parse(principleController.text) *
            double.parse(timeController.text) *
            double.parse(rateController.text)) /
        100;
  }

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: myKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                // onChanged: (value) => {
                //   principle = int.parse(value),
                // },
                controller: principleController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the Principle.',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter principle";
                  }
                  if (value.length < 10 || value.length > 99) {
                    return "Please enter a valid double-digit number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                // onChanged: (value) => {
                //   time = double.tryParse(value) ?? 0,
                // },
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the Time',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter time";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                // onChanged: (value) => {
                //   rate = double.tryParse(value) ?? 0,
                // },
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the rate',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter rate";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (myKey.currentState!.validate()) {
                      si();
                    }
                  });
                },
                child: const Text('Calculate Simple Interest'),
              ),
              const SizedBox(height: 16),
              Text(
                'Simple Interest is Rs$result',
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
      ),
    );
  }
}
