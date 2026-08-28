import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/organization_dtos.dart';

part 'members_state.freezed.dart';

@freezed
abstract class MembersState with _$MembersState {
  const factory MembersState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<MemberDto> items,
    String? nextCursor,
    AppFailure? failure,
    @Default(false) bool loadingMore,
    @Default(false) bool submitting,
  }) = _MembersState;
}
