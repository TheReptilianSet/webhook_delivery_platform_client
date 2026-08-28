import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../data/auth_dtos.dart';

part 'session_state.freezed.dart';

enum SessionStatus { restoring, signedOut, authenticated }

enum SessionEvent { registrationComplete }

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState({
    @Default(SessionStatus.restoring) SessionStatus status,
    @Default(false) bool submitting,
    MeResponseDto? profile,
    AppFailure? failure,
    SessionEvent? event,
    String? suggestedEmail,
  }) = _SessionState;
}
