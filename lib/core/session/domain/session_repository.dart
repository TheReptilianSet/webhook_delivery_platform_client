import 'package:fpdart/fpdart.dart';

import '../../network/app_failure.dart';
import 'session_credentials.dart';

abstract interface class SessionRepository {
  SessionCredentials? get current;

  Stream<SessionCredentials?> get changes;

  TaskEither<AppFailure, SessionCredentials?> restore();

  TaskEither<AppFailure, Unit> establish(SessionCredentials credentials);

  TaskEither<AppFailure, String?> accessTokenForRequest();

  TaskEither<AppFailure, String> refreshAccessToken();

  TaskEither<AppFailure, Unit> clear();

  Future<void> close();
}
