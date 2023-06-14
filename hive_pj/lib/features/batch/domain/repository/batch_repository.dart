import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/features/batch/domain/entity/batch_entity.dart';

import '../../data/repository/batch_local_repository_impl.dart';

final batchRepositoryProvider = Provider<IBatchRepository>((ref) {
  return ref.read(batchLocalRepositoryProvider);
});

abstract class IBatchRepository {
  Future<Either<Failure, List<BatchEntity>>> getAllBatches();
  Future<Either<Failure, bool>> addBatch(BatchEntity batch);
}
