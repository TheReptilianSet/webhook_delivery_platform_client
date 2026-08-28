import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/event_dtos.dart';

part 'events_state.freezed.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<EventDto> items,
    String? nextCursor,
    String? typeFilter,
    AppFailure? failure,
    @Default(false) bool loadingMore,
  }) = _EventsState;
}

@freezed
abstract class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    @Default(ViewStatus.initial) ViewStatus status,
    EventDetailDto? event,
    AppFailure? failure,
  }) = _EventDetailState;
}
