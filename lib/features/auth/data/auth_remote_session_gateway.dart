import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../../../core/session/domain/remote_session_gateway.dart';
import '../../../core/session/domain/session_credentials.dart';
import 'auth_dtos.dart';
import 'identity_api.dart';

final class AuthRemoteSessionGateway implements RemoteSessionGateway {
  const AuthRemoteSessionGateway(this._api);

  final IdentityApi _api;

  @override
  TaskEither<AppFailure, SessionCredentials> refresh(String refreshToken) {
    return apiTask(
      () => _api.refresh(RefreshRequestDto(refreshToken: refreshToken)),
    ).map(_credentialsFromToken);
  }
}

SessionCredentials credentialsFromToken(TokenResponseDto token) =>
    _credentialsFromToken(token);

SessionCredentials _credentialsFromToken(TokenResponseDto token) =>
    SessionCredentials(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      accessExpiresAt: token.accessExpiresAt,
      refreshExpiresAt: token.refreshExpiresAt,
    );
