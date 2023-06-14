import 'package:dartz/dartz.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/features/auth/domain/entity/student_entity.dart';

import '../../domain/repository/auth_repository.dart';

class AuthLocalRepositoryImpl implements IAuthRepository {
  @override
  Future<Either<Failure, bool>> loginStudent(StudentEntity student) {
    // TODO: implement loginStudent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> registerStudent(StudentEntity student) {
    // TODO: implement registerStudent
    throw UnimplementedError();
  }
}
