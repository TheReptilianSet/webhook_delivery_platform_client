import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/organization_dtos.dart';

part 'organization_state.freezed.dart';

@freezed
abstract class OrganizationState with _$OrganizationState {
  const factory OrganizationState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<OrganizationDto> items,
    OrganizationDto? selected,
    AppFailure? failure,
  }) = _OrganizationState;
}
