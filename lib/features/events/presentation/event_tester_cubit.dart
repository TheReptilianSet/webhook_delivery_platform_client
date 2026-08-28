import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/idempotency_key_generator.dart';
import '../data/event_dtos.dart';
import '../domain/events_repository.dart';
import 'event_tester_state.dart';

final class EventTesterCubit extends Cubit<EventTesterState> {
  EventTesterCubit({
    required EventsRepository repository,
    required IdempotencyKeyGenerator keyGenerator,
  }) : _repository = repository,
       _keyGenerator = keyGenerator,
       super(const EventTesterState());

  final EventsRepository _repository;
  final IdempotencyKeyGenerator _keyGenerator;

  Future<void> submit({
    required String producerKey,
    required EventCreateRequestDto request,
  }) async {
    if (state.submitting) return;
    final idempotencyKey = state.idempotencyKey ?? _keyGenerator.create();
    emit(
      state.copyWith(
        submitting: true,
        idempotencyKey: idempotencyKey,
        failure: null,
        result: null,
      ),
    );
    final result = await _repository
        .submit(
          producerKey: producerKey,
          idempotencyKey: idempotencyKey,
          request: request,
        )
        .run();
    result.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (value) => emit(state.copyWith(submitting: false, result: value)),
    );
  }

  void startNewIntent() => emit(const EventTesterState());
}
