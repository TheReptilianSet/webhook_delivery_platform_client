import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_dtos.freezed.dart';
part 'delivery_dtos.g.dart';

@freezed
abstract class DeliveryDto with _$DeliveryDto {
  const factory DeliveryDto({
    required String id,
    required String eventId,
    required String endpointId,
    required String status,
    required int attemptCount,
    DateTime? nextAttemptAt,
    String? replayOf,
    required DateTime createdAt,
  }) = _DeliveryDto;

  factory DeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDtoFromJson(json);
}

@freezed
abstract class DeliveryPageDto with _$DeliveryPageDto {
  const factory DeliveryPageDto({
    required List<DeliveryDto> items,
    String? nextCursor,
  }) = _DeliveryPageDto;

  factory DeliveryPageDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPageDtoFromJson(json);
}

@freezed
abstract class AttemptDto with _$AttemptDto {
  const factory AttemptDto({
    required String id,
    required int attemptNumber,
    required DateTime startedAt,
    DateTime? endedAt,
    required String outcome,
    int? responseStatus,
    int? latencyMs,
    String? errorCode,
    Map<String, dynamic>? retryDecision,
    required bool responsePreviewAvailable,
    String? responsePreview,
    String? responsePreviewEncoding,
    String? responsePreviewError,
  }) = _AttemptDto;

  factory AttemptDto.fromJson(Map<String, dynamic> json) =>
      _$AttemptDtoFromJson(json);
}

@freezed
abstract class AttemptPageDto with _$AttemptPageDto {
  const factory AttemptPageDto({
    required List<AttemptDto> items,
    String? nextCursor,
  }) = _AttemptPageDto;

  factory AttemptPageDto.fromJson(Map<String, dynamic> json) =>
      _$AttemptPageDtoFromJson(json);
}
