import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/app_localizations.dart';
import 'brand_theme.dart';

Future<void> showOneTimeSecretDialog(
  BuildContext context, {
  required String title,
  required String description,
  required String secret,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: 520,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(description),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: BrandColors.ink,
                border: Border(
                  left: BorderSide(color: BrandColors.retry, width: 3),
                ),
              ),
              child: SelectableText(
                secret,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'RelayMono',
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton.icon(
          onPressed: () => _copySecret(context, secret),
          icon: const Icon(Icons.copy),
          label: Text(AppLocalizations.of(context).copy),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppLocalizations.of(context).close),
        ),
      ],
    ),
  );
}

Future<void> _copySecret(BuildContext context, String secret) async {
  await Clipboard.setData(ClipboardData(text: secret));
  if (!context.mounted) return;
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context).copied)));
}
