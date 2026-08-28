import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:webhook_delivery_platform_client/core/network/app_failure.dart';
import 'package:webhook_delivery_platform_client/core/session/data/session_repository_impl.dart';
import 'package:webhook_delivery_platform_client/core/session/domain/remote_session_gateway.dart';
import 'package:webhook_delivery_platform_client/core/session/domain/session_credentials.dart';
import 'package:webhook_delivery_platform_client/core/session/domain/session_store.dart';

void main() {
  group('SessionRepositoryImpl', () {
    test('establish persists credentials before exposing them', () async {
      final store = _MemorySessionStore();
      final repository = SessionRepositoryImpl(
        store: store,
        remote: _StubRemoteSessionGateway(_credentials()),
      );
      final credentials = _credentials();

      final result = await repository.establish(credentials).run();

      expect(result.isRight(), isTrue);
      expect(store.value, credentials);
      expect(repository.current, credentials);
      await repository.close();
    });

    test(
      'restore rotates an expired access token and persists the pair',
      () async {
        final expired = _credentials(
          accessToken: 'expired-access',
          accessExpiresAt: DateTime.now().subtract(const Duration(minutes: 1)),
        );
        final replacement = _credentials(
          accessToken: 'new-access',
          refreshToken: 'new-refresh',
        );
        final store = _MemorySessionStore(expired);
        final remote = _StubRemoteSessionGateway(replacement);
        final repository = SessionRepositoryImpl(store: store, remote: remote);

        final result = await repository.restore().run();

        expect(result.getOrElse((_) => null), replacement);
        expect(store.value, replacement);
        expect(remote.refreshTokens, ['refresh-token']);
        await repository.close();
      },
    );

    test('restore clears a session with an expired refresh token', () async {
      final expired = _credentials(
        refreshExpiresAt: DateTime.now().subtract(const Duration(minutes: 1)),
      );
      final store = _MemorySessionStore(expired);
      final repository = SessionRepositoryImpl(
        store: store,
        remote: _StubRemoteSessionGateway(_credentials()),
      );

      final result = await repository.restore().run();

      expect(result.getOrElse((_) => expired), isNull);
      expect(store.value, isNull);
      expect(store.clearCount, 1);
      await repository.close();
    });
  });
}

SessionCredentials _credentials({
  String accessToken = 'access-token',
  String refreshToken = 'refresh-token',
  DateTime? accessExpiresAt,
  DateTime? refreshExpiresAt,
}) {
  return SessionCredentials(
    accessToken: accessToken,
    refreshToken: refreshToken,
    accessExpiresAt:
        accessExpiresAt ?? DateTime.now().add(const Duration(minutes: 10)),
    refreshExpiresAt:
        refreshExpiresAt ?? DateTime.now().add(const Duration(days: 10)),
  );
}

final class _MemorySessionStore implements SessionStore {
  _MemorySessionStore([this.value]);

  SessionCredentials? value;
  int clearCount = 0;

  @override
  Future<SessionCredentials?> read() async => value;

  @override
  Future<void> write(SessionCredentials credentials) async {
    value = credentials;
  }

  @override
  Future<void> clear() async {
    clearCount += 1;
    value = null;
  }
}

final class _StubRemoteSessionGateway implements RemoteSessionGateway {
  _StubRemoteSessionGateway(this.replacement);

  final SessionCredentials replacement;
  final List<String> refreshTokens = [];

  @override
  TaskEither<AppFailure, SessionCredentials> refresh(String refreshToken) {
    refreshTokens.add(refreshToken);
    return TaskEither.right(replacement);
  }
}
