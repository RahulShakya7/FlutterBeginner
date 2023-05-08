import 'package:first_app/model/register.dart';
import 'package:flutter/material.dart';

class DisplayUser extends StatelessWidget {
  final Register register;

  const DisplayUser({super.key, required this.register});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('register Details'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('First Name: ${register.firstName}'),
            Text('Last Name: ${register.lastName}'),
            Text('Age: ${register.age}'),
            Text('Gender: ${register.gender}'),
            Text('Address: ${register.address}'),
          ],
        ),
      ),
    );
  }
}
