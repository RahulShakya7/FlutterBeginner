import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen.
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.red),
                        child: const Center(child: Text("Container1")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: const Center(child: Text("Container2")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(child: Text("Container3")),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: const Center(child: Text("Container4")),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Center(child: Text("Container5")),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.23,
                        decoration: const BoxDecoration(color: Colors.indigo),
                        child: const Center(child: Text("Container6")),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
