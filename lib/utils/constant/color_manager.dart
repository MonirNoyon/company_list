import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex('#0CBCDC');
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