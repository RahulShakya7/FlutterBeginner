import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

import '../model/course.dart';
import '../model/student.dart';
import '../state/batch_state.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? selectedBatch;
  var batchName = BatchState.batches;

  List<Student> lstStudent = [];

  static List<Course> courses = [
    Course(courseId: 1, courseName: "Flutter"),
    Course(courseId: 2, courseName: "Node JS")
  ];

  final _items = courses
        .map((animal) => MultiSelectItem<Course>(courses, courses.courseName))
        .toList();

  @override
  void initState() {
    _selectedCourses = courses;
    super.initState();
  }


  // Controllers for TextFormFields
  final idController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final courseController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final gap = const SizedBox(height: 10);

  final _formKey = GlobalKey<FormState>();

  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                gap,
                TextFormField(
                  controller: idController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter ID',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter ID';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: firstNameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter Firstname',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Firstname';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: lastNameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter Lastname',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Lastname';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(2),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter Phone',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Phone';
                    }
                    return null;
                  },
                ),
                gap,
                DropdownButtonFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Batch';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Batch',
                    border: OutlineInputBorder(),
                  ),
                  items: batchName
                      .map(
                        (batch) => DropdownMenuItem(
                          value: batch,
                          child: Text(batch),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedBatch = value;
                    });
                  },
                ),
                gap,
                // DropDownMultiSelect(
                //   onChanged: (List<String> x) {
                //     setState(() {
                //       selected = x;
                //     });
                //   },
                //   options: const ['Flutter', 'Node JS', 'Anguler'],
                //   selectedValues: selected,
                //   whenEmpty: 'Course',
                // ),
                MultiSelectChipField(
                  items: _items,
                  initialValue: [courses[4], courses[7], courses[9]],
                  title: const Text("Animals"),
                  headerColor: Colors.blue.withOpacity(0.5),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.blue[700], width: 1.8),
                  // ),
                  selectedChipColor: Colors.blue.withOpacity(0.5),
                  selectedTextStyle: TextStyle(color: Colors.blue[800]),
                  onTap: (values) {
                    //_selectedAnimals4 = values;
                  },
                ),
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
                      return 'Please enter Username';
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
                    child: const Text("Sign Up"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Create a student object and add it to the list of students
                        var student = Student(
                          studentID: idController.text.trim(),
                          fname: firstNameController.text.trim(),
                          lname: lastNameController.text.trim(),
                          phone: phoneController.text.trim(),
                          batch: selectedBatch,
                          username: usernameController.text.trim(),
                          password: passwordController.text.trim(),
                        );

                        lstStudent.add(student);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Student added successfully'),
                          ),
                        );

                        Navigator.pushNamed(
                          context,
                          '/loginRoute',
                          //arguments: lstStudent,
                        );
                      }
                    },
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginRoute');
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
