import 'package:flutter/material.dart';

import '../state/student_state.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 10);

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final key = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: key,
            child: Column(
              children: [
                gap,
                TextFormField(
                  controller: usernameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        var lstStudent = StudentState.students;
                        var username = usernameController.text.trim();
                        var password = passwordController.text.trim();

                        for (int i = 0; i < lstStudent.length; i++) {
                          if (lstStudent[i].username == username &&
                              lstStudent[i].password == password) {
                            Navigator.pushNamed(context, '/dashboardRoute',
                                arguments: username);
                            return;
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Wrong Username or Password!'),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('Log In'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
