import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/endpoint_dtos.dart';

part 'endpoints_state.freezed.dart';

@freezed
sealed class EndpointsEvent with _$EndpointsEvent {
  const factory EndpointsEvent.secretCreated(String secret) =
      EndpointSecretCreated;
}

@freezed
abstract class EndpointsState with _$EndpointsState {
  const factory EndpointsState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<EndpointDto> items,
    String? nextCursor,
    AppFailure? failure,
    @Default(false) bool loadingMore,
    @Default(false) bool submitting,
    EndpointsEvent? event,
  }) = _EndpointsState;
}
