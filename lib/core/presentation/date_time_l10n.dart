import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension DateTimeL10n on DateTime {
  String localized(BuildContext context) {
    final locale = Localizations.localeOf(context).toLanguageTag();
    return DateFormat.yMMMd(locale).add_Hms().format(toLocal());
  }
}
