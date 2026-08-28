import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/auth_dtos.dart';

abstract interface class AuthRepository {
  TaskEither<AppFailure, MeResponseDto> login({
    required String email,
    required String password,
  });

  TaskEither<AppFailure, Unit> register({
    required String email,
    required String password,
    required String organizationName,
  });

  TaskEither<AppFailure, MeResponseDto> me();

  TaskEither<AppFailure, Unit> logout();
}
