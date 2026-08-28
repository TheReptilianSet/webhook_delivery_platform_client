import 'dart:convert';

import 'package:flutter/material.dart';

import 'brand_theme.dart';

final class JsonView extends StatelessWidget {
  const JsonView(this.value, {super.key});

  final Object? value;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: const BoxDecoration(
      color: BrandColors.ink,
      border: Border(left: BorderSide(color: BrandColors.endpoint, width: 3)),
    ),
    child: SelectableText(
      const JsonEncoder.withIndent('  ').convert(value),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
        color: const Color(0xFFDCE4E0),
        fontFamily: 'RelayMono',
        height: 1.5,
      ),
    ),
  );
}
