import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/api_key_dtos.dart';

part 'api_keys_state.freezed.dart';

@freezed
sealed class ApiKeysEvent with _$ApiKeysEvent {
  const factory ApiKeysEvent.keyCreated(String key) = ApiKeySecretCreated;
}

@freezed
abstract class ApiKeysState with _$ApiKeysState {
  const factory ApiKeysState({
    @Default(ViewStatus.initial) ViewStatus status,
    @Default([]) List<ApiKeyDto> items,
    String? nextCursor,
    AppFailure? failure,
    @Default(false) bool loadingMore,
    @Default(false) bool submitting,
    ApiKeysEvent? event,
  }) = _ApiKeysState;
}
