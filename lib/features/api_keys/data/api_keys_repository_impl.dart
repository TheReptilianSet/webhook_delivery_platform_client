import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../domain/api_keys_repository.dart';
import 'api_key_dtos.dart';
import 'api_keys_api.dart';

final class ApiKeysRepositoryImpl implements ApiKeysRepository {
  const ApiKeysRepositoryImpl(this._api);

  final ApiKeysApi _api;

  @override
  TaskEither<AppFailure, ApiKeyPageDto> list(
    String organizationId, {
    String? cursor,
  }) => apiTask(() => _api.listApiKeys(organizationId, cursor: cursor));

  @override
  TaskEither<AppFailure, ApiKeyCreatedDto> create(
    String organizationId,
    String name,
  ) => apiTask(
    () => _api.createApiKey(
      organizationId,
      ApiKeyCreateRequestDto(name: name, scopes: const ['events:write']),
    ),
  );

  @override
  TaskEither<AppFailure, Unit> revoke(String organizationId, String keyId) =>
      apiTask(() => _api.revokeApiKey(organizationId, keyId)).map((_) => unit);
}
