import 'package:flutter/material.dart';
import 'package:new_project/shared_prefernce/sharedpref.dart';

import '../model/user.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  final _gap = const SizedBox(height: 8);
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preference'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            _gap,
            TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  SharedPref sharedPref = SharedPref();
                  var user = User(
                    username: _usernameController.text.trim(),
                    password: _passwordController.text.trim(),
                  );

                  // Add to shared preferences
                  sharedPref.addUser(user);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('user added'),
                    ),
                  );
                },
                child: const Text('Add'),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  SharedPref sharedPref = SharedPref();
                  user = await sharedPref.getUser();
                  setState(() {});
                },
                child: const Text('Get data'),
              ),
            ),
            if (user != null)
              Text(
                  'username :  ${user!.username}, password : ${user!.password} '),
          ],
        ),
      ),
    );
  }
}
