import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../domain/organizations_repository.dart';
import 'organization_dtos.dart';
import 'organizations_api.dart';

final class OrganizationsRepositoryImpl implements OrganizationsRepository {
  const OrganizationsRepositoryImpl(this._api);

  final OrganizationsApi _api;

  @override
  TaskEither<AppFailure, OrganizationPageDto> listOrganizations({
    String? cursor,
  }) => apiTask(() => _api.listOrganizations(cursor: cursor));

  @override
  TaskEither<AppFailure, MemberPageDto> listMembers(
    String organizationId, {
    String? cursor,
  }) => apiTask(() => _api.listMembers(organizationId, cursor: cursor));

  @override
  TaskEither<AppFailure, MemberDto> addMember(
    String organizationId,
    MemberCreateRequestDto request,
  ) => apiTask(() => _api.addMember(organizationId, request));

  @override
  TaskEither<AppFailure, MemberDto> updateMember(
    String organizationId,
    String userId,
    MemberUpdateRequestDto request,
  ) => apiTask(() => _api.updateMember(organizationId, userId, request));

  @override
  TaskEither<AppFailure, Unit> deleteMember(
    String organizationId,
    String userId,
  ) =>
      apiTask(() => _api.deleteMember(organizationId, userId)).map((_) => unit);
}
