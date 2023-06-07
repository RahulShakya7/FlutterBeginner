import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    var breadth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("StackView"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(clipBehavior: Clip.none, children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            // color: Colors.green,
            child:
                Image.network("https://images6.alphacoders.com/597/597293.jpg"),
          ),
          // Positioned(
          //   top: 1,
          //   right: 1,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.cyan,
          //   ),
          // ),
          // Positioned(
          //   bottom: 1,
          //   right: 1,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.yellow,
          //   ),
          // ),
          Positioned(
            bottom: -40,
            left: 20,
            child: CircleAvatar(
              radius: breadth * 0.1,
              backgroundImage: const NetworkImage(
                  'https://media.istockphoto.com/id/183029105/photo/f22-raptor.jpg?b=1&s=170667a&w=0&k=20&c=eiwsoX1Beq3W_Azz3iKHIpSYoQfkfQuziAzT55mXOsA='),
            ),
          ),
        ]),
      ),
    );
  }
}
