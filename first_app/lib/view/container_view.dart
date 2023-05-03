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
      body: SafeArea(
        child: Container(
          color: Colors.green,
          height: 200,
          width: 200,
          child: const Center(child: Text('Hello World')),
        ),
      ),
    );
  }
}
