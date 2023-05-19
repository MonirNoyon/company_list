import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constant/font_manager.dart';

Widget CustomText({
  required String text,
  FontWeight? fontWeight = FontWeightManager.regular,
  double fontSize = 14,
  Color color = Colors.black,
  double textHeight = 1.2,
  int maxLines = 1,
  TextAlign textAlign = TextAlign.start,
  double topPadding = 0.0,
  double leftPadding = 0.0,
  double rightPadding = 0.0,
  double bottomPadding = 0.0,
})=> Padding(
  padding: EdgeInsets.only(left: leftPadding,top: topPadding,right: rightPadding,bottom: bottomPadding),
  child:   Text(
    text,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.roboto(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        height: textHeight,
    ),
  ),
);
