import 'package:flutter/material.dart';

import '../model/register.dart';
import 'output_screen2.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
  final genderOptions = ['Male', 'Female', 'Other'];
  String? selectedGender;
  final addressController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void _saveregisterDetails() {
    if (formKey.currentState!.validate()) {
      final register = Register(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        age: int.parse(ageController.text),
        gender: selectedGender,
        address: addressController.text,
      );

      _showSuccessDialog(register);
    }
  }

  void _showSuccessDialog(Register register) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('register details saved successfully!'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _navigateToDisplayScreen() {
    final register = Register(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      age: int.parse(ageController.text),
      gender: selectedGender,
      address: addressController.text,
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayUser(register: register)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(labelText: 'First name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(labelText: 'Last name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter age';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid age';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text('Gender'),
                ...genderOptions.map((gender) => RadioListTile(
                      title: Text(gender),
                      value: gender,
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    )),
                TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _saveregisterDetails,
                  child: const Text('Save'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _navigateToDisplayScreen,
                  child: const Text('Display'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
