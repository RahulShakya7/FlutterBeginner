import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/student.dart';
import '../state/student_view_state.dart';

final studentViewModelProvider =
    StateNotifierProvider<StudentViewModel, StudentState>(
  (ref) => StudentViewModel(),
);

class StudentViewModel extends StateNotifier<StudentState> {
  // Giving initial state from state
  StudentViewModel() : super(StudentState.initialState()) {
    getAllStudents();
  }

  void addStudent(Student student) {
    // spin progress bar
    state = state.copyWith(isLoading: true);
    // add student to state
    state.students.add(student);
    // stop progress bar spinning
    state = state.copyWith(isLoading: false);
  }

  void deleteStudent(Student student) {
    state = state.copyWith(isLoading: true);
    state.students.remove(student);
    state = state.copyWith(isLoading: true);
  }

  void getAllStudents() {
    state = state.copyWith(isLoading: true);
    state.students = [
      Student(fname: 'Will', lname: 'Smith', dob: '01/12/1999'),
      Student(fname: 'Roronoa', lname: 'Zoro', dob: '04/12/1999'),
      Student(fname: 'Megan', lname: 'Fox', dob: '01/02/1099'),
    ];
    state = state.copyWith(isLoading: false);
  }
}
