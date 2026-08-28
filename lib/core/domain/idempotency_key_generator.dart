import 'dart:math';

final class IdempotencyKeyGenerator {
  IdempotencyKeyGenerator({Random? random})
    : _random = random ?? Random.secure();

  final Random _random;

  String create() {
    final bytes = List<int>.generate(16, (_) => _random.nextInt(256));
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  }
}
