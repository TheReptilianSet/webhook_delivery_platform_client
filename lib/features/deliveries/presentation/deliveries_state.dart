import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/delivery_dtos.dart';
import '../domain/deliveries_repository.dart';

part 'deliveries_state.freezed.dart';

@freezed
abstract class DeliveriesState with _$DeliveriesState {
  const factory DeliveriesState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<DeliveryDto> items,
    String? nextCursor,
    String? statusFilter,
    String? endpointIdFilter,
    String? eventIdFilter,
    AppFailure? failure,
    @Default(false) bool loadingMore,
  }) = _DeliveriesState;
}

@freezed
abstract class DeliveryDetailState with _$DeliveryDetailState {
  const factory DeliveryDetailState({
    @Default(ViewStatus.initial) ViewStatus status,
    DeliveryDto? delivery,
    @Default([]) List<AttemptDto> attempts,
    AppFailure? failure,
    @Default(false) bool submitting,
    DeliveryReplayResult? replayResult,
  }) = _DeliveryDetailState;
}
