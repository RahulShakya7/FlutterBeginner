import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resultsapp/model/student.dart';
import 'package:resultsapp/state/student_state.dart';

final marksViewModelProvider =
    StateNotifierProvider<MarkSheetViewModel, StudentMarksState>(
  (ref) => MarkSheetViewModel(),
);

class MarkSheetViewModel extends StateNotifier<StudentMarksState> {
  MarkSheetViewModel() : super(StudentMarksState.initialState()) {
    getAllMarkSheet();
  }

  void getAllMarkSheet() {
    state.marks?.add(Student(
        fname: "Denaerys",
        lname: "Targaryn",
        module: "Mobile Application Development",
        marks: 78));
    state.marks?.add(Student(
        fname: "Sheldon",
        lname: "Cooper",
        module: "Web API Develoipment",
        marks: 100));
    state.marks?.add(Student(
        fname: "Will",
        lname: "Smith",
        module: "Individual Projects",
        marks: 50));
    state.marks?.add(
      Student(
        fname: "John",
        lname: "Wick",
        module: "Design Thinking",
        marks: 90,
      ),
    );
  }

  void deleteMarkSheet(Student marks) {
    state = state.copyWith(isLoading: true);
    final updatedMarksheets = state.marks?.where((ms) => ms != marks).toList();
    state = state.copyWith(marks: updatedMarksheets);
    state = state.copyWith(isLoading: false);
  }

  void addMark(Student marks) {
    state = state.copyWith(isLoading: true);
    state.marks?.add(marks);
    state = state.copyWith(isLoading: false);
  }
}
