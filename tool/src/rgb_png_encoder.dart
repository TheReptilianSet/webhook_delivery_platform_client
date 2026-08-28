import 'dart:io';
import 'dart:typed_data';

/// Encodes opaque RGBA pixels as an RGB PNG.
///
/// Flutter retains an alpha channel even when every pixel is opaque. Apple
/// AppIcon validation rejects that output, so opaque platform assets use this
/// dependency-free encoder while transparent assets use Flutter's encoder.
Uint8List encodeRgbPng(int width, int height, ByteData rgba) {
  final scanlines = BytesBuilder(copy: false);
  for (var y = 0; y < height; y++) {
    scanlines.addByte(0);
    for (var x = 0; x < width; x++) {
      final offset = (y * width + x) * 4;
      scanlines.add([
        rgba.getUint8(offset),
        rgba.getUint8(offset + 1),
        rgba.getUint8(offset + 2),
      ]);
    }
  }

  final header = ByteData(13)
    ..setUint32(0, width)
    ..setUint32(4, height)
    ..setUint8(8, 8)
    ..setUint8(9, 2)
    ..setUint8(10, 0)
    ..setUint8(11, 0)
    ..setUint8(12, 0);
  final output = BytesBuilder(copy: false)
    ..add(const [137, 80, 78, 71, 13, 10, 26, 10])
    ..add(_pngChunk('IHDR', header.buffer.asUint8List()))
    ..add(_pngChunk('IDAT', ZLibCodec().encode(scanlines.takeBytes())))
    ..add(_pngChunk('IEND', const []));
  return output.takeBytes();
}

Uint8List _pngChunk(String type, List<int> data) {
  final typeBytes = type.codeUnits;
  final payload = Uint8List.fromList([...typeBytes, ...data]);
  final length = ByteData(4)..setUint32(0, data.length);
  final checksum = ByteData(4)..setUint32(0, _crc32(payload));
  return Uint8List.fromList([
    ...length.buffer.asUint8List(),
    ...payload,
    ...checksum.buffer.asUint8List(),
  ]);
}

int _crc32(List<int> bytes) {
  var crc = 0xFFFFFFFF;
  for (final byte in bytes) {
    crc ^= byte;
    for (var bit = 0; bit < 8; bit++) {
      crc = (crc & 1) == 1 ? (crc >> 1) ^ 0xEDB88320 : crc >> 1;
    }
  }
  return (crc ^ 0xFFFFFFFF) & 0xFFFFFFFF;
}
