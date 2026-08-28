import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/idempotency_key_generator.dart';
import '../../../core/presentation/view_status.dart';
import '../domain/deliveries_repository.dart';
import 'deliveries_state.dart';

final class DeliveryDetailCubit extends Cubit<DeliveryDetailState> {
  DeliveryDetailCubit({
    required DeliveriesRepository repository,
    required IdempotencyKeyGenerator keyGenerator,
    required String organizationId,
    required String deliveryId,
  }) : _repository = repository,
       _keyGenerator = keyGenerator,
       _organizationId = organizationId,
       _deliveryId = deliveryId,
       super(const DeliveryDetailState());

  final DeliveriesRepository _repository;
  final IdempotencyKeyGenerator _keyGenerator;
  final String _organizationId;
  final String _deliveryId;
  String? _replayIntentKey;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final deliveryResult = await _repository
        .get(_organizationId, _deliveryId)
        .run();
    await deliveryResult.match(
      (failure) async =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (delivery) async {
        final attemptsResult = await _repository
            .attempts(_organizationId, _deliveryId)
            .run();
        attemptsResult.match(
          (failure) => emit(
            state.copyWith(status: ViewStatus.failure, failure: failure),
          ),
          (page) => emit(
            DeliveryDetailState(
              status: ViewStatus.success,
              delivery: delivery,
              attempts: page.items,
            ),
          ),
        );
      },
    );
  }

  Future<void> replay() async {
    if (state.submitting) return;
    final key = _replayIntentKey ??= _keyGenerator.create();
    emit(state.copyWith(submitting: true, failure: null, replayResult: null));
    final result = await _repository
        .replay(_organizationId, _deliveryId, key)
        .run();
    result.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (value) {
        _replayIntentKey = null;
        emit(state.copyWith(submitting: false, replayResult: value));
      },
    );
  }

  void consumeReplayResult() {
    if (state.replayResult != null) {
      emit(state.copyWith(replayResult: null));
    }
  }
}
