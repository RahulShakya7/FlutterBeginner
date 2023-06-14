import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_pj/core/failure/failure.dart';
import 'package:hive_pj/core/network/local/hive_service.dart';
import 'package:hive_pj/features/batch/data/model/batch_hive_model.dart';
import 'package:hive_pj/features/batch/domain/entity/batch_entity.dart';

final batchLocalDataSourceProvider = Provider<BatchLocalDataSource>((ref) {
  return BatchLocalDataSource(
    hiveService: ref.read(hiveServieProvider),
    batchHiveModel: ref.read(batchHiveModelProvider),
  );
});

class BatchLocalDataSource {
  final HiveService hiveService;
  final BatchHiveModel batchHiveModel;

  BatchLocalDataSource({
    required this.hiveService,
    required this.batchHiveModel,
  });

  Future<Either<Failure, bool>> addBatch(BatchEntity batch) async {
    try {
      // Convert Entity to Hive Object
      final hiveBatch = batchHiveModel.toHiveModel(batch);
      // Add to Hive
      await hiveService.addBatch(hiveBatch);
      return const Right(true);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }

  Future<Either<Failure, List<BatchEntity>>> getAllBatches() async {
    try {
      // Retrieve batches from Hive
      final hiveBatches = await hiveService.getAllBatches();
      // Convert Hive objects to Entity objects
      final entityList =
          hiveBatches.map((hiveBatch) => batchHiveModel.toEntity()).toList();
      return Right(entityList);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}
