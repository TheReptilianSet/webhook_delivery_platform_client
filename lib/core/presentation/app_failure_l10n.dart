import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';
import '../network/app_failure.dart';

extension AppFailureL10n on AppFailure {
  String localized(BuildContext context) {
    if (backendMessage case final message?) {
      return message;
    }
    final l10n = AppLocalizations.of(context);
    return switch (kind) {
      AppFailureKind.backend => l10n.operationFailed,
      AppFailureKind.network => l10n.networkFailure,
      AppFailureKind.storage => l10n.storageFailure,
      AppFailureKind.unexpected => l10n.unexpectedFailure,
    };
  }
}
