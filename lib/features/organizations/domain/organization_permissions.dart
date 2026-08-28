import '../data/organization_dtos.dart';

extension OrganizationPermissions on OrganizationDto {
  bool get canManageEndpoints => role == 'owner' || role == 'admin';

  bool get canManageApiKeys => role == 'owner' || role == 'admin';

  bool get canReplayDeliveries => role == 'owner' || role == 'admin';

  bool get canManageMembers => role == 'owner';
}
