import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../domain/events_repository.dart';

part 'event_tester_state.freezed.dart';

@freezed
abstract class EventTesterState with _$EventTesterState {
  const factory EventTesterState({
    @Default(false) bool submitting,
    String? idempotencyKey,
    EventSubmissionResult? result,
    AppFailure? failure,
  }) = _EventTesterState;
}
