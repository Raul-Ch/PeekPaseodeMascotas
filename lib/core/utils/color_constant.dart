import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color orangeA200 = fromHex('#fda541');

  static Color blueGray400 = fromHex('#8390a1');

  static Color black900 = fromHex('#000000');

  static Color indigo50 = fromHex('#e8ecf4');

  static Color gray900 = fromHex('#1e232c');

  static Color teal900 = fromHex('#024458');

  static Color blueGray500 = fromHex('#717c89');

  static Color lightGreen200 = fromHex('#d5de95');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f7f8f9');

  static Color gray100 = fromHex('#f6f7f8');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color lightGreen20001 = fromHex('#d5df96');

  static Color black9007f = fromHex('#7f000000');

  static Color lightGreen20002 = fromHex('#d5df97');

  static Color black9003f = fromHex('#3f000000');

  static Color blueGray40002 = fromHex('#888888');
}
