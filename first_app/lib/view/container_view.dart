import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  int? result;

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as int?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // result = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topRight,
        child: Container(
            // color: Colors.green,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            alignment: Alignment.center,
            child: const Text('Hello World')),
      ),
    );
  }
}
