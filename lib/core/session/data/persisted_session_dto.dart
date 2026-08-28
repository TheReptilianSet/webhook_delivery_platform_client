import 'package:freezed_annotation/freezed_annotation.dart';

part 'persisted_session_dto.freezed.dart';
part 'persisted_session_dto.g.dart';

@freezed
abstract class PersistedSessionDto with _$PersistedSessionDto {
  const factory PersistedSessionDto({
    required String accessToken,
    required String refreshToken,
    required DateTime accessExpiresAt,
    required DateTime refreshExpiresAt,
  }) = _PersistedSessionDto;

  factory PersistedSessionDto.fromJson(Map<String, dynamic> json) =>
      _$PersistedSessionDtoFromJson(json);
}
