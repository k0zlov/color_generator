import 'package:flutter/material.dart';

extension ColorHexX on Color {
  static const int _hexRadix = 16;
  static const int _alphaChannelLength = 2;
  static const int _fullHexLength = 8;

  String get toHex {
    final fullHex = toARGB32()
        .toRadixString(_hexRadix)
        .padLeft(_fullHexLength, '0');

    return '#${fullHex.substring(_alphaChannelLength).toUpperCase()}';
  }

  Color get contrastColor {
    // ignore: no_magic_number
    return computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}
