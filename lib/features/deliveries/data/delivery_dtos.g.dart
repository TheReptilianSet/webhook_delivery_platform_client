// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryDto _$DeliveryDtoFromJson(Map<String, dynamic> json) => _DeliveryDto(
  id: json['id'] as String,
  eventId: json['event_id'] as String,
  endpointId: json['endpoint_id'] as String,
  status: json['status'] as String,
  attemptCount: (json['attempt_count'] as num).toInt(),
  nextAttemptAt: json['next_attempt_at'] == null
      ? null
      : DateTime.parse(json['next_attempt_at'] as String),
  replayOf: json['replay_of'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$DeliveryDtoToJson(_DeliveryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'endpoint_id': instance.endpointId,
      'status': instance.status,
      'attempt_count': instance.attemptCount,
      'next_attempt_at': ?instance.nextAttemptAt?.toIso8601String(),
      'replay_of': ?instance.replayOf,
      'created_at': instance.createdAt.toIso8601String(),
    };

_DeliveryPageDto _$DeliveryPageDtoFromJson(Map<String, dynamic> json) =>
    _DeliveryPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => DeliveryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$DeliveryPageDtoToJson(_DeliveryPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };

_AttemptDto _$AttemptDtoFromJson(Map<String, dynamic> json) => _AttemptDto(
  id: json['id'] as String,
  attemptNumber: (json['attempt_number'] as num).toInt(),
  startedAt: DateTime.parse(json['started_at'] as String),
  endedAt: json['ended_at'] == null
      ? null
      : DateTime.parse(json['ended_at'] as String),
  outcome: json['outcome'] as String,
  responseStatus: (json['response_status'] as num?)?.toInt(),
  latencyMs: (json['latency_ms'] as num?)?.toInt(),
  errorCode: json['error_code'] as String?,
  retryDecision: json['retry_decision'] as Map<String, dynamic>?,
  responsePreviewAvailable: json['response_preview_available'] as bool,
  responsePreview: json['response_preview'] as String?,
  responsePreviewEncoding: json['response_preview_encoding'] as String?,
  responsePreviewError: json['response_preview_error'] as String?,
);

Map<String, dynamic> _$AttemptDtoToJson(_AttemptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attempt_number': instance.attemptNumber,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': ?instance.endedAt?.toIso8601String(),
      'outcome': instance.outcome,
      'response_status': ?instance.responseStatus,
      'latency_ms': ?instance.latencyMs,
      'error_code': ?instance.errorCode,
      'retry_decision': ?instance.retryDecision,
      'response_preview_available': instance.responsePreviewAvailable,
      'response_preview': ?instance.responsePreview,
      'response_preview_encoding': ?instance.responsePreviewEncoding,
      'response_preview_error': ?instance.responsePreviewError,
    };

_AttemptPageDto _$AttemptPageDtoFromJson(Map<String, dynamic> json) =>
    _AttemptPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => AttemptDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$AttemptPageDtoToJson(_AttemptPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };
