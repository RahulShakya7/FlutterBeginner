import 'package:dartz/dartz.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/features/auth/domain/entity/student_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerStudent(StudentEntity student);
  Future<Either<Failure, bool>> loginStudent(StudentEntity student);
}
