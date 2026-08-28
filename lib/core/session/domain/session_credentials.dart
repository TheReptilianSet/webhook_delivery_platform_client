import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_credentials.freezed.dart';

@freezed
abstract class SessionCredentials with _$SessionCredentials {
  const factory SessionCredentials({
    required String accessToken,
    required String refreshToken,
    required DateTime accessExpiresAt,
    required DateTime refreshExpiresAt,
  }) = _SessionCredentials;
}
