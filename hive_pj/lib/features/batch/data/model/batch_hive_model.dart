import 'package:hive/hive.dart';
import 'package:hive_pj/config/constants/hive_table_constant.dart';
import 'package:hive_pj/features/batch/batch_entity.dart';
import 'package:uuid/uuid.dart';

part 'batch_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel {
  @HiveField(0)
  final String? batchId;

  @HiveField(1)
  final String? batchName;

  BatchHiveModel.empty() : this(batchId: '', batchName: '');

  BatchHiveModel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? const Uuid().v4();

  @override
  String toString() {
    return 'batchId: $batchId, batchName: $batchName';
  }

  BatchEntity toEntity() => BatchEntity(
    batchId: batchId;
    batchName: batchName;
  );

  BatchHiveModel toHiveModel(BatchEntity entity) => BatchHiveModel(
    // batchId: entity.batchId,
    batchName: entity.batchName;
  );
}

class HiveField {
  const HiveField(int i);
}
