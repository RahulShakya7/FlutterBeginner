import 'package:hive_pj/features/batch/batch_entity.dart';

class StudentBatch {
  final String? studentId;

  final String fName;

  final String lName;

  final String phone;

  final String username;

  final String password;

  final BatchEntity batch;

  final List<CourseEntity> courses;

  StudentBatch({
    this.studentId,
    required this.fName,
    required this.lName,
    required this.phone,
    required this.batch,
    required this.courses,
    required this.username,
    required this.password,
  });
}
