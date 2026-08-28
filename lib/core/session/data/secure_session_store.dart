import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../domain/session_credentials.dart';
import '../domain/session_store.dart';
import 'persisted_session_dto.dart';

final class SecureSessionStore implements SessionStore {
  SecureSessionStore({FlutterSecureStorage? storage})
    : _storage = storage ?? const FlutterSecureStorage();

  static const _sessionKey = 'authenticated_session_v1';

  final FlutterSecureStorage _storage;

  @override
  Future<SessionCredentials?> read() async {
    try {
      final serialized = await _storage.read(key: _sessionKey);
      if (serialized == null) {
        return null;
      }
      final json = jsonDecode(serialized);
      if (json is! Map<String, dynamic>) {
        throw const FormatException();
      }
      return PersistedSessionDto.fromJson(json).toDomain();
    } on Object {
      await _bestEffortClear();
      throw const SessionStorageException();
    }
  }

  @override
  Future<void> write(SessionCredentials credentials) async {
    try {
      final dto = PersistedSessionMapper.fromDomain(credentials);
      await _storage.write(key: _sessionKey, value: jsonEncode(dto.toJson()));
    } on Object {
      throw const SessionStorageException();
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _storage.delete(key: _sessionKey);
    } on Object {
      throw const SessionStorageException();
    }
  }

  Future<void> _bestEffortClear() async {
    try {
      await _storage.delete(key: _sessionKey);
    } on Object {
      // The caller receives a storage failure regardless of cleanup outcome.
    }
  }
}

extension on PersistedSessionDto {
  SessionCredentials toDomain() => SessionCredentials(
    accessToken: accessToken,
    refreshToken: refreshToken,
    accessExpiresAt: accessExpiresAt,
    refreshExpiresAt: refreshExpiresAt,
  );
}

final class PersistedSessionMapper {
  const PersistedSessionMapper._();

  static PersistedSessionDto fromDomain(SessionCredentials credentials) =>
      PersistedSessionDto(
        accessToken: credentials.accessToken,
        refreshToken: credentials.refreshToken,
        accessExpiresAt: credentials.accessExpiresAt,
        refreshExpiresAt: credentials.refreshExpiresAt,
      );
}
