import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

import 'src/rgb_png_encoder.dart';

const _ink = ui.Color(0xFF171B1F);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('generate Relay Trace platform assets from canonical SVGs', () async {
    final root = Directory.current.path;
    final sources = await _BrandSources.load(root);

    try {
      await _generateAndroid(root, sources);
      await _generateIos(root, sources);
      await _generateWeb(root, sources);
      await _generateBrandExports(root, sources);
      await _verifyOutputs(root);
    } finally {
      sources.dispose();
    }
  });
}

Future<void> _generateAndroid(String root, _BrandSources sources) async {
  const sizes = {
    'mdpi': (legacy: 48, adaptive: 108),
    'hdpi': (legacy: 72, adaptive: 162),
    'xhdpi': (legacy: 96, adaptive: 216),
    'xxhdpi': (legacy: 144, adaptive: 324),
    'xxxhdpi': (legacy: 192, adaptive: 432),
  };

  for (final entry in sizes.entries) {
    final directory = '$root/android/app/src/main/res/mipmap-${entry.key}';
    await _writePng(
      '$directory/ic_launcher.png',
      sources.master,
      entry.value.legacy,
      entry.value.legacy,
      opaque: true,
    );
    await _writePng(
      '$directory/ic_launcher_foreground.png',
      sources.foreground,
      entry.value.adaptive,
      entry.value.adaptive,
    );
    await _writePng(
      '$directory/ic_launcher_monochrome.png',
      sources.monochrome,
      entry.value.adaptive,
      entry.value.adaptive,
    );
  }

  await _writePng(
    '$root/android/app/src/main/res/drawable-nodpi/launch_logo.png',
    sources.master,
    96,
    96,
    opaque: true,
  );
}

Future<void> _generateIos(String root, _BrandSources sources) async {
  const sizes = {
    'Icon-App-20x20@1x.png': 20,
    'Icon-App-20x20@2x.png': 40,
    'Icon-App-20x20@3x.png': 60,
    'Icon-App-29x29@1x.png': 29,
    'Icon-App-29x29@2x.png': 58,
    'Icon-App-29x29@3x.png': 87,
    'Icon-App-40x40@1x.png': 40,
    'Icon-App-40x40@2x.png': 80,
    'Icon-App-40x40@3x.png': 120,
    'Icon-App-60x60@2x.png': 120,
    'Icon-App-60x60@3x.png': 180,
    'Icon-App-76x76@1x.png': 76,
    'Icon-App-76x76@2x.png': 152,
    'Icon-App-83.5x83.5@2x.png': 167,
    'Icon-App-1024x1024@1x.png': 1024,
  };
  final appIconDirectory =
      '$root/ios/Runner/Assets.xcassets/AppIcon.appiconset';
  for (final entry in sizes.entries) {
    await _writePng(
      '$appIconDirectory/${entry.key}',
      sources.master,
      entry.value,
      entry.value,
      opaque: true,
    );
  }

  const launchSizes = {
    'LaunchImage.png': 96,
    'LaunchImage@2x.png': 192,
    'LaunchImage@3x.png': 288,
  };
  final launchDirectory =
      '$root/ios/Runner/Assets.xcassets/LaunchImage.imageset';
  for (final entry in launchSizes.entries) {
    await _writePng(
      '$launchDirectory/${entry.key}',
      sources.master,
      entry.value,
      entry.value,
      opaque: true,
    );
  }
}

Future<void> _generateWeb(String root, _BrandSources sources) async {
  await _writePng(
    '$root/web/favicon.png',
    sources.master,
    32,
    32,
    opaque: true,
  );
  await _writePng(
    '$root/web/icons/Icon-192.png',
    sources.master,
    192,
    192,
    opaque: true,
  );
  await _writePng(
    '$root/web/icons/Icon-512.png',
    sources.master,
    512,
    512,
    opaque: true,
  );
  await _writePng(
    '$root/web/icons/Icon-maskable-192.png',
    sources.foreground,
    192,
    192,
    background: _ink,
    opaque: true,
  );
  await _writePng(
    '$root/web/icons/Icon-maskable-512.png',
    sources.foreground,
    512,
    512,
    background: _ink,
    opaque: true,
  );
}

Future<void> _generateBrandExports(String root, _BrandSources sources) async {
  for (final size in [16, 24, 32, 48, 512, 1024]) {
    await _writePng(
      '$root/assets/brand/generated/relay-trace-$size.png',
      sources.master,
      size,
      size,
      opaque: true,
    );
  }
  await _writePng(
    '$root/assets/brand/generated/relay-console-wordmark.png',
    sources.wordmark,
    800,
    256,
  );
  await _writePng(
    '$root/docs/brand/relay-trace-preview.png',
    sources.master,
    512,
    512,
    opaque: true,
  );
}

Future<void> _writePng(
  String path,
  PictureInfo source,
  int width,
  int height, {
  ui.Color? background,
  bool opaque = false,
}) async {
  final recorder = ui.PictureRecorder();
  final canvas = ui.Canvas(recorder);
  if (background != null) {
    canvas.drawRect(
      ui.Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
      ui.Paint()..color = background,
    );
  }

  final scale = math.min(
    width / source.size.width,
    height / source.size.height,
  );
  final left = (width - source.size.width * scale) / 2;
  final top = (height - source.size.height * scale) / 2;
  canvas
    ..translate(left, top)
    ..scale(scale)
    ..drawPicture(source.picture);

  final image = await recorder.endRecording().toImage(width, height);
  final data = await image.toByteData(
    format: opaque ? ui.ImageByteFormat.rawRgba : ui.ImageByteFormat.png,
  );
  image.dispose();
  if (data == null) throw StateError('Could not encode $path');

  final file = File(path)..createSync(recursive: true);
  final bytes = opaque
      ? encodeRgbPng(width, height, data)
      : data.buffer.asUint8List();
  await file.writeAsBytes(bytes, flush: true);
}

Future<void> _verifyOutputs(String root) async {
  final webIcon = '$root/web/icons/Icon-512.png';
  final iosIcon =
      '$root/ios/Runner/Assets.xcassets/AppIcon.appiconset/'
      'Icon-App-1024x1024@1x.png';
  final foreground =
      '$root/android/app/src/main/res/mipmap-xxxhdpi/'
      'ic_launcher_foreground.png';
  final wordmark = '$root/assets/brand/generated/relay-console-wordmark.png';

  expect(await _imageSize(webIcon), const ui.Size(512, 512));
  expect(await _imageSize(iosIcon), const ui.Size(1024, 1024));
  expect(await _imageSize(foreground), const ui.Size(432, 432));
  expect(await _imageSize(wordmark), const ui.Size(800, 256));
  expect(_pngColorType(webIcon), 2);
  expect(_pngColorType(iosIcon), 2);
  expect(_pngColorType(foreground), 6);

  final webPixels = await _rgbaPixels(webIcon);
  expect(_pixel(webPixels, 512, 0, 0), const [23, 27, 31, 255]);
  expect(_pixel(webPixels, 512, 88, 256), const [63, 110, 245, 255]);
  expect(_pixel(webPixels, 512, 464, 256), const [25, 165, 140, 255]);
  expect(_pixel(webPixels, 512, 240, 328), const [227, 163, 37, 255]);

  final foregroundPixels = await _rgbaPixels(foreground);
  expect(_pixel(foregroundPixels, 432, 0, 0)[3], 0);
  expect(_pixel(foregroundPixels, 432, 116, 216)[3], 255);
}

int _pngColorType(String path) {
  final bytes = File(path).readAsBytesSync();
  if (bytes.length < 26) throw StateError('Invalid PNG: $path');
  return bytes[25];
}

Future<ui.Size> _imageSize(String path) async {
  final bytes = await File(path).readAsBytes();
  final codec = await ui.instantiateImageCodec(bytes);
  final frame = await codec.getNextFrame();
  final size = ui.Size(
    frame.image.width.toDouble(),
    frame.image.height.toDouble(),
  );
  frame.image.dispose();
  codec.dispose();
  return size;
}

Future<ByteData> _rgbaPixels(String path) async {
  final bytes = await File(path).readAsBytes();
  final codec = await ui.instantiateImageCodec(bytes);
  final frame = await codec.getNextFrame();
  final data = await frame.image.toByteData(format: ui.ImageByteFormat.rawRgba);
  frame.image.dispose();
  codec.dispose();
  if (data == null) throw StateError('Could not decode $path');
  return data;
}

List<int> _pixel(ByteData data, int width, int x, int y) {
  final offset = (y * width + x) * 4;
  return [
    data.getUint8(offset),
    data.getUint8(offset + 1),
    data.getUint8(offset + 2),
    data.getUint8(offset + 3),
  ];
}

class _BrandSources {
  const _BrandSources({
    required this.master,
    required this.foreground,
    required this.monochrome,
    required this.wordmark,
  });

  final PictureInfo master;
  final PictureInfo foreground;
  final PictureInfo monochrome;
  final PictureInfo wordmark;

  static Future<_BrandSources> load(String root) async {
    Future<PictureInfo> load(String name) => vg.loadPicture(
      SvgFileLoader(File('$root/assets/brand/$name')),
      null,
      clipViewbox: true,
    );

    return _BrandSources(
      master: await load('relay-trace-master.svg'),
      foreground: await load('relay-trace-foreground.svg'),
      monochrome: await load('relay-trace-monochrome.svg'),
      wordmark: await load('relay-trace-wordmark.svg'),
    );
  }

  void dispose() {
    master.picture.dispose();
    foreground.picture.dispose();
    monochrome.picture.dispose();
    wordmark.picture.dispose();
  }
}
