import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color blueGray300 = fromHex('#94a3b8');

  static Color blueA400 = fromHex('#2972ff');

  static Color blueGray500 = fromHex('#64748b');

  static Color gray900 = fromHex('#121825');

  static Color red300 = fromHex('#c1976b');

  static Color indigo900 = fromHex('#21346a');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f8fafc');

  static Color gray100 = fromHex('#f1f5f9');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
