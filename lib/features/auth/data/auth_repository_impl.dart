import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../../../core/session/domain/session_repository.dart';
import '../domain/auth_repository.dart';
import 'auth_dtos.dart';
import 'auth_remote_session_gateway.dart';
import 'identity_api.dart';

final class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required IdentityApi anonymousApi,
    required IdentityApi authenticatedApi,
    required SessionRepository session,
  }) : _anonymousApi = anonymousApi,
       _authenticatedApi = authenticatedApi,
       _session = session;

  final IdentityApi _anonymousApi;
  final IdentityApi _authenticatedApi;
  final SessionRepository _session;

  @override
  TaskEither<AppFailure, MeResponseDto> login({
    required String email,
    required String password,
  }) {
    return apiTask(
      () => _anonymousApi.login(
        LoginRequestDto(email: email, password: password),
      ),
    ).flatMap(
      (tokens) =>
          _session.establish(credentialsFromToken(tokens)).flatMap((_) => me()),
    );
  }

  @override
  TaskEither<AppFailure, Unit> register({
    required String email,
    required String password,
    required String organizationName,
  }) {
    return apiTask(
      () => _anonymousApi.register(
        RegisterRequestDto(
          email: email,
          password: password,
          organizationName: organizationName,
        ),
      ),
    ).map((_) => unit);
  }

  @override
  TaskEither<AppFailure, MeResponseDto> me() => apiTask(_authenticatedApi.me);

  @override
  TaskEither<AppFailure, Unit> logout() {
    return TaskEither(() async {
      final refreshToken = _session.current?.refreshToken;
      if (refreshToken != null) {
        await apiTask(
          () => _anonymousApi.logout(
            LogoutRequestDto(refreshToken: refreshToken),
          ),
        ).run();
      }
      return _session.clear().run();
    });
  }
}
