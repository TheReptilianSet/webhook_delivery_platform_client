import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/session/domain/session_repository.dart';
import '../domain/auth_repository.dart';
import 'session_state.dart';

final class SessionCubit extends Cubit<SessionState> {
  SessionCubit({
    required SessionRepository sessionRepository,
    required AuthRepository authRepository,
  }) : _sessionRepository = sessionRepository,
       _authRepository = authRepository,
       super(const SessionState()) {
    _sessionSubscription = _sessionRepository.changes.listen((credentials) {
      if (credentials == null && state.status == SessionStatus.authenticated) {
        emit(const SessionState(status: SessionStatus.signedOut));
      }
    });
  }

  final SessionRepository _sessionRepository;
  final AuthRepository _authRepository;
  late final StreamSubscription<Object?> _sessionSubscription;

  Future<void> restore() async {
    emit(const SessionState(status: SessionStatus.restoring));
    final restored = await _sessionRepository.restore().run();
    await restored.match(
      (failure) async =>
          emit(SessionState(status: SessionStatus.signedOut, failure: failure)),
      (credentials) async {
        if (credentials == null) {
          emit(const SessionState(status: SessionStatus.signedOut));
          return;
        }
        await _loadProfile();
      },
    );
  }

  Future<void> login({required String email, required String password}) async {
    if (state.submitting) {
      return;
    }
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await _authRepository
        .login(email: email, password: password)
        .run();
    result.match(
      (failure) => emit(
        state.copyWith(
          status: SessionStatus.signedOut,
          submitting: false,
          failure: failure,
        ),
      ),
      (profile) => emit(
        SessionState(status: SessionStatus.authenticated, profile: profile),
      ),
    );
  }

  Future<void> register({
    required String email,
    required String password,
    required String organizationName,
  }) async {
    if (state.submitting) {
      return;
    }
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await _authRepository
        .register(
          email: email,
          password: password,
          organizationName: organizationName,
        )
        .run();
    result.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (_) => emit(
        SessionState(
          status: SessionStatus.signedOut,
          event: SessionEvent.registrationComplete,
          suggestedEmail: email,
        ),
      ),
    );
  }

  Future<void> logout() async {
    await _authRepository.logout().run();
    emit(const SessionState(status: SessionStatus.signedOut));
  }

  void consumeEvent() {
    if (state.event != null) {
      emit(state.copyWith(event: null));
    }
  }

  Future<void> _loadProfile() async {
    final profile = await _authRepository.me().run();
    await profile.match(
      (failure) async {
        await _sessionRepository.clear().run();
        emit(SessionState(status: SessionStatus.signedOut, failure: failure));
      },
      (value) async => emit(
        SessionState(status: SessionStatus.authenticated, profile: value),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _sessionSubscription.cancel();
    return super.close();
  }
}
