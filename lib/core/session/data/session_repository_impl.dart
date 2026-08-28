import 'dart:async';

import 'package:fpdart/fpdart.dart';

import '../../network/app_failure.dart';
import '../../network/failure_mapper.dart';
import '../domain/remote_session_gateway.dart';
import '../domain/session_credentials.dart';
import '../domain/session_repository.dart';
import '../domain/session_store.dart';

final class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl({
    required SessionStore store,
    required RemoteSessionGateway remote,
  }) : _store = store,
       _remote = remote;

  final SessionStore _store;
  final RemoteSessionGateway _remote;
  final StreamController<SessionCredentials?> _changes =
      StreamController<SessionCredentials?>.broadcast();

  SessionCredentials? _current;
  Future<Either<AppFailure, String>>? _refreshing;

  @override
  SessionCredentials? get current => _current;

  @override
  Stream<SessionCredentials?> get changes => _changes.stream;

  @override
  TaskEither<AppFailure, SessionCredentials?> restore() {
    return TaskEither.tryCatch(() async {
      final restored = await _store.read();
      if (restored == null ||
          restored.refreshExpiresAt.isBefore(DateTime.now())) {
        await _clearInternal();
        return null;
      }
      _setCurrent(restored);
      if (_accessNeedsRefresh(restored)) {
        final result = await refreshAccessToken().run();
        return result.match((_) => null, (_) => _current);
      }
      return restored;
    }, _mapStorageFailure);
  }

  @override
  TaskEither<AppFailure, Unit> establish(SessionCredentials credentials) {
    return TaskEither.tryCatch(() async {
      await _store.write(credentials);
      _setCurrent(credentials);
      return unit;
    }, _mapStorageFailure);
  }

  @override
  TaskEither<AppFailure, String?> accessTokenForRequest() {
    final credentials = _current;
    if (credentials == null) {
      return TaskEither.right(null);
    }
    if (!_accessNeedsRefresh(credentials)) {
      return TaskEither.right(credentials.accessToken);
    }
    return refreshAccessToken().map<String?>((token) => token);
  }

  @override
  TaskEither<AppFailure, String> refreshAccessToken() {
    return TaskEither(() async {
      final activeRefresh = _refreshing;
      if (activeRefresh != null) {
        return activeRefresh;
      }
      final operation = _refreshCurrent();
      _refreshing = operation;
      try {
        return await operation;
      } finally {
        _refreshing = null;
      }
    });
  }

  Future<Either<AppFailure, String>> _refreshCurrent() async {
    final credentials = _current;
    if (credentials == null) {
      return const Left(
        AppFailure(
          kind: AppFailureKind.backend,
          code: 'authentication_required',
          statusCode: 401,
        ),
      );
    }

    final refreshed = await _remote.refresh(credentials.refreshToken).run();
    return refreshed.match(
      (failure) async {
        await _bestEffortClear();
        return Left(failure);
      },
      (replacement) async {
        try {
          await _store.write(replacement);
          _setCurrent(replacement);
          return Right(replacement.accessToken);
        } on Object catch (error, stackTrace) {
          await _bestEffortClear();
          return Left(_mapStorageFailure(error, stackTrace));
        }
      },
    );
  }

  @override
  TaskEither<AppFailure, Unit> clear() {
    return TaskEither.tryCatch(() async {
      await _clearInternal();
      return unit;
    }, _mapStorageFailure);
  }

  Future<void> _clearInternal() async {
    await _store.clear();
    _setCurrent(null);
  }

  Future<void> _bestEffortClear() async {
    try {
      await _store.clear();
    } on Object {
      // Session still becomes signed out when persistent cleanup fails.
    }
    _setCurrent(null);
  }

  void _setCurrent(SessionCredentials? credentials) {
    _current = credentials;
    _changes.add(credentials);
  }

  bool _accessNeedsRefresh(SessionCredentials credentials) {
    return credentials.accessExpiresAt.isBefore(
      DateTime.now().add(const Duration(seconds: 30)),
    );
  }

  AppFailure _mapStorageFailure(Object error, StackTrace stackTrace) {
    if (error is SessionStorageException) {
      return const AppFailure(kind: AppFailureKind.storage);
    }
    return FailureMapper.fromException(error, stackTrace);
  }

  @override
  Future<void> close() => _changes.close();
}
