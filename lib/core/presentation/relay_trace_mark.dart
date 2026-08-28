import 'package:flutter/material.dart';

import 'brand_theme.dart';

final class RelayTraceMark extends StatelessWidget {
  const RelayTraceMark({
    this.size = 48,
    this.withBackground = false,
    this.monochromeColor,
    super.key,
  });

  final double size;
  final bool withBackground;
  final Color? monochromeColor;

  @override
  Widget build(BuildContext context) => SizedBox.square(
    dimension: size,
    child: CustomPaint(
      painter: _RelayTracePainter(
        withBackground: withBackground,
        monochromeColor: monochromeColor,
      ),
    ),
  );
}

final class RelayConsoleWordmark extends StatelessWidget {
  const RelayConsoleWordmark({
    this.darkBackground = false,
    this.markSize = 36,
    super.key,
  });

  final bool darkBackground;
  final double markSize;

  @override
  Widget build(BuildContext context) {
    final titleColor = darkBackground ? Colors.white : BrandColors.ink;
    final subtitleColor = darkBackground
        ? BrandColors.inkMuted
        : BrandColors.muted;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RelayTraceMark(size: markSize),
        const SizedBox(width: 10),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RELAY',
              style: TextStyle(
                color: titleColor,
                fontSize: markSize * 0.42,
                height: 1,
                fontWeight: FontWeight.w800,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'CONSOLE',
              style: TextStyle(
                color: subtitleColor,
                fontSize: markSize * 0.22,
                height: 1,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final class _RelayTracePainter extends CustomPainter {
  const _RelayTracePainter({
    required this.withBackground,
    required this.monochromeColor,
  });

  final bool withBackground;
  final Color? monochromeColor;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.shortestSide / 64;
    canvas.scale(scale);

    if (withBackground) {
      canvas.drawRect(
        const Rect.fromLTWH(0, 0, 64, 64),
        Paint()..color = BrandColors.ink,
      );
    }

    final primary = monochromeColor ?? BrandColors.route;
    final retry = monochromeColor ?? BrandColors.retry;
    final endpoint = monochromeColor ?? BrandColors.endpoint;

    canvas.drawRect(
      const Rect.fromLTWH(7, 27, 8, 10),
      Paint()..color = primary,
    );
    canvas.drawPath(
      Path()
        ..moveTo(15, 32)
        ..lineTo(25, 32)
        ..lineTo(34, 23)
        ..lineTo(43, 23)
        ..lineTo(51, 31),
      Paint()
        ..color = primary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.butt
        ..strokeJoin = StrokeJoin.bevel,
    );
    canvas.drawPath(
      Path()
        ..moveTo(25, 41)
        ..lineTo(40, 41)
        ..lineTo(49, 32)
        ..lineTo(54, 32),
      Paint()
        ..color = retry
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.butt
        ..strokeJoin = StrokeJoin.bevel,
    );
    canvas.drawRect(
      const Rect.fromLTWH(51, 28, 4, 8),
      Paint()..color = endpoint,
    );
    canvas.drawRect(
      const Rect.fromLTWH(55, 22, 6, 20),
      Paint()..color = endpoint,
    );
  }

  @override
  bool shouldRepaint(covariant _RelayTracePainter oldDelegate) =>
      oldDelegate.withBackground != withBackground ||
      oldDelegate.monochromeColor != monochromeColor;
}
