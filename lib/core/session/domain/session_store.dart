import 'session_credentials.dart';

abstract interface class SessionStore {
  Future<SessionCredentials?> read();

  Future<void> write(SessionCredentials credentials);

  Future<void> clear();
}

final class SessionStorageException implements Exception {
  const SessionStorageException();
}
