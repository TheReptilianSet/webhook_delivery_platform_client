import 'package:fpdart/fpdart.dart';

import '../../network/app_failure.dart';
import 'session_credentials.dart';

abstract interface class RemoteSessionGateway {
  TaskEither<AppFailure, SessionCredentials> refresh(String refreshToken);
}
