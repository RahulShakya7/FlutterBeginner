import 'package:first_app/model/name.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class NameView extends StatefulWidget {
  const NameView({super.key});

  @override
  State<NameView> createState() => _NameViewState();
}

class _NameViewState extends State<NameView> {
  String named = 'Names';
  int counter = 0;

  late NameCenter namecenter;

  void nameprint() {
    setState(() {
      namecenter = NameCenter();
      // named = namecenter.printNames(names);
      setState(() {
        named = namecenter.printNames(counter++);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Print Names'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            nameprint();
          },
          child: Text(named),
        ),
      ),
    );
  }
}
