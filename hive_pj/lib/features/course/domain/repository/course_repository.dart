import 'package:dartz/dartz.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/features/course/domain/entity/course_entity.dart';

abstract class ICourseRepository {
  Future<Either<Failure, List<CourseEntity>>> getallbatches();
  Future<Either<Failure, bool>> addBatch(CourseEntity batch);
}
