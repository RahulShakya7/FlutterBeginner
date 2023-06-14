import 'package:hive/hive.dart';
import 'package:hive_pj/config/constants/hive_table_constant.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entity/course_entity.dart';

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

  // Convert hive object to entity
  CourseEntity toEntity() => CourseEntity(
        courseId: courseId,
        courseName: courseName,
      );

  // Convert enotity to hiveobject
  CourseHiveModel toHiveModel(CourseEntity entity) => CourseHiveModel(
        // courseId: entity.courseId,
        courseName: entity.courseName,
      );

  // Convert Entity List to Hive List 
  List<CourseHiveModel> toHiveModelList(List<CourseEntity> entities) =>
      entities.map((entity) => toHiveModel(entity)).toList();

  // Convert Hive List to Entity List
  List<CourseEntity> toEntityList(List<CourseHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();
}

class HiveField {
  const HiveField(int i);
}
