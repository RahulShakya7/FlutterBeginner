// import 'package:flutter/material.dart';

// import '../model/Student.dart';

// class DataTableView extends StatefulWidget {
//   const DataTableView({super.key});

//   @override
//   State<DataTableView> createState() => _DataTableViewState();
// }

// class _DataTableViewState extends State<DataTableView> {
//   List<Student> studentlst = [
// Student(fname: "Walter", age: 47),
// Student(fname: "Jessie", age: 27),
// Student(fname: "Skyler", age: 38),
//   ];

//   void _showAlert(BuildContext context, Student student) {

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Data table"),
//         centerTitle: true,
//       ),
//       body: SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: DataTable(
//             headingRowColor:
//                 MaterialStateColor.resolveWith((states) => Colors.blueGrey),
//             columns: const [
//               DataColumn(
//                 label:
//                     Expanded(child: Text('Name', textAlign: TextAlign.center)),
//               ),
//               DataColumn(
//                   label: Expanded(
//                 child: Text('Roll No', textAlign: TextAlign.center),
//               )),
//             ],
//             // rows: const [
//             //   DataRow(
//             //     cells: [
//             //       DataCell(
//             //         Expanded(
//             //           child: Center(
//             //             child: Wrap(
//             //               children: [
//             //                 Text('Hello'),
//             //               ],
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //       DataCell(Text('11')),
//             //     ],
//             //   )
//             // ],
//             rows: [
//               for (Student student in studentlst) ...{
//                 DataRow(
//                   cells: [
//                     DataCell(Center(child: Text(student.fname!))),
//                     DataCell(Center(child: Text(student.age.toString()))),
//                     DataCell(Wrap(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.edit,
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             setState(() {
//                               studentlst.remove(student);
//                             });
//                           },
//                           icon: const Icon(
//                             Icons.delete,
//                           ),
//                         )
//                       ],
//                     )),
//                     DataCell(Center(child: Text(student.age.toString()))),
//                   ],
//                 )
//               }
//             ]),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Student {
  final String fname;
  final int rollNo;

  Student({required this.fname, required this.rollNo});
}

class DataTableView extends StatefulWidget {
  const DataTableView({Key? key}) : super(key: key);

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  List<Student> studentlst = [
    Student(fname: "Walter", rollNo: 47),
    Student(fname: "Jessie", rollNo: 27),
    Student(fname: "Skyler", rollNo: 38),
    Student(fname: "Bob", rollNo: 34),
    Student(fname: "Clark", rollNo: 32),
    Student(fname: "Sandy", rollNo: 23),
  ];

  Future<void> confirmation(BuildContext context, Student student) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to delete this student?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                studentlst.remove(student);
                Navigator.pop(context);
                setState(() {}); // Update the widget after deletion
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table View'),
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.blueGrey),
            border: TableBorder.all(color: Colors.blue),
            columns: const [
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Name',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Roll No',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Actions',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
            rows: [
              for (var student in studentlst)
                DataRow(
                  cells: [
                    DataCell(Text(student.fname)),
                    DataCell(Text(student.rollNo.toString())),
                    DataCell(
                      Center(
                        child: Wrap(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                confirmation(context, student);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
