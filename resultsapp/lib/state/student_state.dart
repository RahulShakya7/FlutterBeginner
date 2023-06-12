import '../model/student.dart';

class StudentMarksState {
  bool? isLoading;
  List<Student>? marks;
  String? error;

  StudentMarksState({required this.isLoading, required this.marks, this.error});

  StudentMarksState.initialState()
      : this(isLoading: false, marks: [], error: null);

  StudentMarksState copyWith({bool? isLoading, List<Student>? marks}) {
    return StudentMarksState(
      isLoading: isLoading ?? this.isLoading,
      marks: marks ?? this.marks,
    );
  }
}
