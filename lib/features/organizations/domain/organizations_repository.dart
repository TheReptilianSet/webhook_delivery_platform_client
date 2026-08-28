import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/organization_dtos.dart';

abstract interface class OrganizationsRepository {
  TaskEither<AppFailure, OrganizationPageDto> listOrganizations({
    String? cursor,
  });

  TaskEither<AppFailure, MemberPageDto> listMembers(
    String organizationId, {
    String? cursor,
  });

  TaskEither<AppFailure, MemberDto> addMember(
    String organizationId,
    MemberCreateRequestDto request,
  );

  TaskEither<AppFailure, MemberDto> updateMember(
    String organizationId,
    String userId,
    MemberUpdateRequestDto request,
  );

  TaskEither<AppFailure, Unit> deleteMember(
    String organizationId,
    String userId,
  );
}
