import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_pj/features/batch/domain/entity/batch_entity.dart';
import 'package:hive_pj/features/batch/presentation/viewmodel/batch_viewmodel.dart';
import 'package:hive_pj/features/course/domain/entity/course_entity.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  final _gap = const SizedBox(
    height: 20,
  );

  // final List<BatchEntity> _dropDownValue = BatchState.lstBatch;

  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  BatchEntity? _dropDownValue;
  final List<CourseEntity> _lstCourses = [];

  late BatchEntity _batch;
  final List<String> _lstChosenCourses = [];
  List<CourseEntity> chosenCourse = [];

  final GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void initState() {
    _fNameController.text = '';
    _lNameController.text = '';
    _phoneController.text = '';
    _usernameController.text = '';
    _passwordController.text = '';
    super.initState();
  }

  @override
  void dispose() {
    _fNameController.dispose();
    _lNameController.dispose();
    _phoneController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final batchState = ref.watch(batchViewModelProvider);
    // final courseState = ref.watch(courseViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                controller: _fNameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(labelText: "First Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter First Name';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: _lNameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(labelText: "Last Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Last Name';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Phone number"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
              ),
              _gap,
              if (batchState.isLoading) ...{
                const Center(
                  child: CircularProgressIndicator(),
                )
              } else if (batchState.error != null) ...{
                Center(
                  child: Text(batchState.error!),
                )
              } else ...{
                DropdownButtonFormField(
                  items: batchState.batches
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.batchName),
                          ))
                      .toList(),
                  onChanged: (value) {
                    _dropDownValue = value;
                  },
                  value: _dropDownValue,
                  decoration: const InputDecoration(
                    labelText: 'Select Batch',
                  ),
                ),
              },
              _gap,
              MultiSelectDialogField(
                items: _lstCourses
                    .map((e) => MultiSelectItem(e, e.courseName!))
                    .toList(),
                listType: MultiSelectListType.CHIP,
                onConfirm: (values) {
                  _lstChosenCourses.clear();
                  // print(values);
                  chosenCourse = values;
                  for (var i = 0; i < chosenCourse.length; i++) {
                    _lstChosenCourses.add(chosenCourse[i].courseId!);
                  }

                  chosenCourse = [];
                },
              ),
              _gap,
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: "Username"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Username';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Password';
                  }
                  return null;
                },
              ),
              _gap,
              _gap,
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        var fName = _fNameController.text.trim();
                        var lName = _lNameController.text.trim();
                        var phone = _phoneController.text.trim();
                        var username = _usernameController.text.trim();
                        var password = _passwordController.text.trim();
                        _batch;
                        _lstChosenCourses;

                        print(
                            "$fName \n $lName \n $phone \n $username \n $password \n $_batch \n  $_lstChosenCourses");
                        Navigator.pushNamed(context, '/login');
                      }
                    },
                    child: const Text('Register')),
              )
            ],
          ),
        ),
      )),
    );
  }
}
