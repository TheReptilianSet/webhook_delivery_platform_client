// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventDto _$EventDtoFromJson(Map<String, dynamic> json) => _EventDto(
  id: json['id'] as String,
  type: json['type'] as String,
  version: (json['version'] as num).toInt(),
  occurredAt: DateTime.parse(json['occurred_at'] as String),
  data: json['data'] as Map<String, dynamic>,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$EventDtoToJson(_EventDto instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'version': instance.version,
  'occurred_at': instance.occurredAt.toIso8601String(),
  'data': instance.data,
  'created_at': instance.createdAt.toIso8601String(),
};

_EventDetailDto _$EventDetailDtoFromJson(Map<String, dynamic> json) =>
    _EventDetailDto(
      id: json['id'] as String,
      type: json['type'] as String,
      version: (json['version'] as num).toInt(),
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      data: json['data'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['created_at'] as String),
      deliverySummary: Map<String, int>.from(json['delivery_summary'] as Map),
    );

Map<String, dynamic> _$EventDetailDtoToJson(_EventDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'version': instance.version,
      'occurred_at': instance.occurredAt.toIso8601String(),
      'data': instance.data,
      'created_at': instance.createdAt.toIso8601String(),
      'delivery_summary': instance.deliverySummary,
    };

_EventPageDto _$EventPageDtoFromJson(Map<String, dynamic> json) =>
    _EventPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => EventDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$EventPageDtoToJson(_EventPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };

_EventCreateRequestDto _$EventCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _EventCreateRequestDto(
  type: json['type'] as String,
  version: (json['version'] as num).toInt(),
  occurredAt: DateTime.parse(json['occurred_at'] as String),
  data: json['data'] as Map<String, dynamic>,
);

Map<String, dynamic> _$EventCreateRequestDtoToJson(
  _EventCreateRequestDto instance,
) => <String, dynamic>{
  'type': instance.type,
  'version': instance.version,
  'occurred_at': instance.occurredAt.toIso8601String(),
  'data': instance.data,
};

_EventAcceptedDto _$EventAcceptedDtoFromJson(Map<String, dynamic> json) =>
    _EventAcceptedDto(
      eventId: json['event_id'] as String,
      status: json['status'] as String,
      deliveryCount: (json['delivery_count'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EventAcceptedDtoToJson(_EventAcceptedDto instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'status': instance.status,
      'delivery_count': instance.deliveryCount,
      'created_at': instance.createdAt.toIso8601String(),
    };
