import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color c1 = HexColor("FEFFE2");  //Color.fromRGBO(254, 255, 226, 1)
Color c2 = HexColor("DAD5AB3");  //Color.fromRGBO(240, 240, 203, 1)
Color c3 = HexColor("F0F0CB");  //Color.fromRGBO(218, 213, 171, 1)
Color c4 = HexColor("C3BA85");  //Color.fromRGBO(195, 186, 133, 1)