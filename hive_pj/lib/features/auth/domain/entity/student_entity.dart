import 'package:hive_pj/features/batch/domain/entity/batch_entity.dart';
import 'package:hive_pj/features/course/domain/entity/course_entity.dart';

class StudentEntity {
  final String? studentId;

  final String? fName;

  final String? lName;

  final String? phone;

  final String? username;

  final String? password;

  final BatchEntity? batch;

  final List<CourseEntity> courses;

  StudentEntity({
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
