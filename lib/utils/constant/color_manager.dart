import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex('#25A5A3');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color darkBlue = HexColor.fromHex('#122333');
  static Color grey = HexColor.fromHex('#4E5A66');
}

extension HexColor on Color{
  static Color fromHex(String hexColor){
    hexColor = hexColor.replaceAll('#', '');
    if(hexColor.length == 6){
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor,radix: 16));
  }
}