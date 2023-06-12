import 'package:hive/hive.dart';
import 'package:hive_pj/config/constants/hive_table_constant.dart';
import 'package:uuid/uuid.dart';

part 'course_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.batchTableId)
class CourseHiveModel {
  @HiveField(0)
  final String? courseId;

  @HiveField(1)
  final String? courseName;

  CourseHiveModel.empty() : this(courseId: '', courseName: '');

  CourseHiveModel({
    String? courseId,
    required this.courseName,
  }) : courseId = courseId ?? const Uuid().v4();

  @override
  String toString() {
    return 'courseId: $courseId, courseName: $courseName';
  }
}

class HiveField {
  const HiveField(int i);
}
