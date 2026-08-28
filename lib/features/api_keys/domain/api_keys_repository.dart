import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/api_key_dtos.dart';

abstract interface class ApiKeysRepository {
  TaskEither<AppFailure, ApiKeyPageDto> list(
    String organizationId, {
    String? cursor,
  });

  TaskEither<AppFailure, ApiKeyCreatedDto> create(
    String organizationId,
    String name,
  );

  TaskEither<AppFailure, Unit> revoke(String organizationId, String keyId);
}
