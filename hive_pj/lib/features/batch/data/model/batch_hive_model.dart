import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_pj/config/constants/hive_table_constant.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entity/batch_entity.dart';

part 'batch_hive_model.g.dart';

final batchHiveModelProvider = Provider(
  (ref) => BatchHiveModel.empty(),
);

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel {
  @HiveField(0)
  final String? batchId;

  @HiveField(1)
  final String batchName;

  BatchHiveModel.empty() : this(batchId: '', batchName: '');

  BatchHiveModel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? const Uuid().v4();

  @override
  String toString() {
    return 'batchId: $batchId, batchName: $batchName';
  }

  // Convert hive object to entity
  BatchEntity toEntity() => BatchEntity(
        batchId: batchId,
        batchName: batchName,
      );

  // Convert entity to hiveobject
  BatchHiveModel toHiveModel(BatchEntity entity) => BatchHiveModel(
        // batchId: entity.batchId,
        batchName: entity.batchName,
      );

  // Convert Hive List to Entity List
  List<BatchEntity> toEntityList(List<BatchHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();
}

class HiveField {
  const HiveField(int i);
}
