import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dtos.freezed.dart';
part 'event_dtos.g.dart';

@freezed
abstract class EventDto with _$EventDto {
  const factory EventDto({
    required String id,
    required String type,
    required int version,
    required DateTime occurredAt,
    required Map<String, dynamic> data,
    required DateTime createdAt,
  }) = _EventDto;

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);
}

@freezed
abstract class EventDetailDto with _$EventDetailDto {
  const factory EventDetailDto({
    required String id,
    required String type,
    required int version,
    required DateTime occurredAt,
    required Map<String, dynamic> data,
    required DateTime createdAt,
    required Map<String, int> deliverySummary,
  }) = _EventDetailDto;

  factory EventDetailDto.fromJson(Map<String, dynamic> json) =>
      _$EventDetailDtoFromJson(json);
}

@freezed
abstract class EventPageDto with _$EventPageDto {
  const factory EventPageDto({
    required List<EventDto> items,
    String? nextCursor,
  }) = _EventPageDto;

  factory EventPageDto.fromJson(Map<String, dynamic> json) =>
      _$EventPageDtoFromJson(json);
}

@freezed
abstract class EventCreateRequestDto with _$EventCreateRequestDto {
  const factory EventCreateRequestDto({
    required String type,
    required int version,
    required DateTime occurredAt,
    required Map<String, dynamic> data,
  }) = _EventCreateRequestDto;

  factory EventCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$EventCreateRequestDtoFromJson(json);
}

@freezed
abstract class EventAcceptedDto with _$EventAcceptedDto {
  const factory EventAcceptedDto({
    required String eventId,
    required String status,
    required int deliveryCount,
    required DateTime createdAt,
  }) = _EventAcceptedDto;

  factory EventAcceptedDto.fromJson(Map<String, dynamic> json) =>
      _$EventAcceptedDtoFromJson(json);
}
