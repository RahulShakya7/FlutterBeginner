import 'package:dartz/dartz.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/features/course/domain/entity/course_entity.dart';
import 'package:hive_pj/features/course/domain/repository/course_repository.dart';

class CourseRepositoryImpl implements ICourseRepository {
  @override
  Future<Either<Failure, bool>> addBatch(CourseEntity batch) {
    // TODO: implement addBatch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CourseEntity>>> getallbatches() {
    // TODO: implement getallbatches
    throw UnimplementedError();
  }
}
