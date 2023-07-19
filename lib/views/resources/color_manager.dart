// ignore_for_file: camel_case_types, camel_case_extensions, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class colorManager {
  static Color primary = hexColor.fromHex("#453B88");
  static Color darkGrey = hexColor.fromHex("#525252");
  static Color grey = hexColor.fromHex("#737477");
  static Color lightGrey = hexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = hexColor.fromHex("#B3ED9728");
  static Color white = hexColor.fromHex("#FFF");
  static Color error = hexColor.fromHex("#FF00000");

}

extension hexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", '');

    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 Char awith opacity 1005

    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}
