import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webhook_delivery_platform_client/core/domain/idempotency_key_generator.dart';
import 'package:webhook_delivery_platform_client/core/presentation/json_view.dart';

void main() {
  test('idempotency keys are unique 128-bit hex values', () {
    final generator = IdempotencyKeyGenerator();
    final first = generator.create();
    final second = generator.create();

    expect(first, matches(RegExp(r'^[0-9a-f]{32}$')));
    expect(second, isNot(first));
  });

  testWidgets('JsonView renders formatted structured data', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: JsonView({'status': 'ok'}))),
    );

    expect(find.textContaining('"status": "ok"'), findsOneWidget);
  });
}
