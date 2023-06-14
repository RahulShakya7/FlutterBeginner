import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_pj/features/batch/domain/entity/batch_entity.dart';

import '../../domain/repository/batch_repository.dart';
import '../../domain/use_case/batch_usecase.dart';

final batchUseCaseProvider = Provider<BatchUseCase>(
  (ref) => BatchUseCase(batchRepository: ref.read(batchRepositoryProvider)),
);

class BatchState {
  final bool isLoading;
  final List<BatchEntity> batches;
  final String? error;

  BatchState({
    required this.isLoading,
    required this.batches,
    this.error,
  });

  factory BatchState.initial() {
    return BatchState(
      isLoading: false,
      batches: [],
    );
  }

  BatchState copyWith({
    bool? isLoading,
    List<BatchEntity>? batches,
    String? error,
  }) {
    return BatchState(
      isLoading: isLoading ?? this.isLoading,
      batches: batches ?? this.batches,
      error: error ?? this.error,
    );
  }
}
