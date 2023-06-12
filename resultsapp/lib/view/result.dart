import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/student.dart';
import '../viewmodel/view_model.dart';

class StudentResultView extends ConsumerStatefulWidget {
  const StudentResultView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddStudentViewState();
}

class _AddStudentViewState extends ConsumerState<StudentResultView> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final marksController = TextEditingController();

  final myKey = GlobalKey<FormState>();

  List<String> lstModules = [
    'Mobile App Development',
    'Web API Development',
    'Individual Projects',
    'Design Thinking'
  ];

  String? course;

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(marksViewModelProvider);

    final total =
        data.marks!.fold(0, (sum, marksheet) => sum + (marksheet.marks ?? 0));
    final result = data.marks!.any(
            (marksheet) => marksheet.marks != null && marksheet.marks! < 40)
        ? 'Fail'
        : 'Pass';

    String grade;
    final totalPercentage = (total / data.marks!.length);
    if (totalPercentage >= 60) {
      grade = 'First Division';
    } else if (totalPercentage >= 50) {
      grade = 'Second Division';
    } else if (totalPercentage >= 40) {
      grade = 'Third Division';
    } else {
      grade = "Fail";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Marksheet'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: fNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Enter first name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: lNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Enter last name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a course';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Courses',
                    border: OutlineInputBorder(),
                  ),
                  value: course,
                  items: lstModules
                      .map(
                        (course) => DropdownMenuItem(
                          value: course,
                          child: Text(course),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      course = value;
                    });
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: marksController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Marks',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Marks';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        var markSheet = Student(
                          fname: fNameController.text.trim(),
                          lname: lNameController.text.trim(),
                          module: course,
                          marks: int.parse(marksController.text),
                        );

                        ref
                            .read(marksViewModelProvider.notifier)
                            .addMark(markSheet);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Marks added"),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                    },
                    child: const Text('Add Student'),
                  ),
                ),
                const SizedBox(height: 8),
                if (data.marks!.isNotEmpty)
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        child: DataTable(
                          columns: const [
                            DataColumn(label: Text('First Name')),
                            DataColumn(label: Text('Last Name')),
                            DataColumn(label: Text('Module')),
                            DataColumn(label: Text('Marks')),
                            DataColumn(label: Text('Division')),
                            DataColumn(label: Text('Action')),
                          ],
                          rows: data.marks!.map((markSheet) {
                            final studentTotal = (markSheet.marks ?? 0);

                            String studentGrade;
                            if (studentTotal >= 60) {
                              studentGrade = 'First Division';
                            } else if (studentTotal >= 50) {
                              studentGrade = 'Second Division';
                            } else if (studentTotal >= 40) {
                              studentGrade = 'Third Division';
                            } else {
                              studentGrade = 'Fail';
                            }
                            return DataRow(
                              cells: [
                                DataCell(Text(markSheet.fname ?? '')),
                                DataCell(Text(markSheet.lname ?? '')),
                                DataCell(Text(markSheet.module ?? '')),
                                DataCell(Text(markSheet.marks.toString())),
                                DataCell(Text(studentGrade)),
                                DataCell(
                                  IconButton(
                                    onPressed: () {
                                      ref
                                          .read(marksViewModelProvider.notifier)
                                          .deleteMarkSheet(markSheet);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("Deleted"),
                                          backgroundColor: Colors.redAccent,
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  )
                else
                  const Text("No Data"),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Total Marks: $total',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('Result: $result',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('Division: $grade',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
