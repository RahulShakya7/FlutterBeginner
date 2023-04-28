import 'package:flutter/material.dart';

import '../model/arithmatic.dart';

// final -> run time
// const - > compile
class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController(text: '80');
  final secondController = TextEditingController(text: '90');
  int result = 0;

  @override
  void initState() {
    // firstController.text = '45';
    // secondController.text = '55';
    super.initState();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  // var arithmatic = Arithmatic();

  // Late initializer
  late Arithmatic arithmatic;

  void add() {
    setState(() {
      arithmatic = Arithmatic();
      result = arithmatic.add(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
  }

  void sub() {
    setState(() {
      arithmatic = Arithmatic();
      result = arithmatic.sub(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
  }

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithemtic'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter first no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter first number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  // onChanged: (value) {
                  //   second = int.parse(value);
                  // },
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter second no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter second number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('ADD'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        sub();
                      }
                    },
                    child: const Text('SUB'),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sum is : $result',
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
      ),
    );
  }
}
