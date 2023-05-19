import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constant/font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: GoogleFonts.archivoNarrow(
        fontSize: FontSize.s14_5,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue.withOpacity(0.6), width: 0.8),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: .8,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: .8,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 0.8,
        ),
      ),
      border: const OutlineInputBorder(

      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 10,
      ),
      labelStyle: const TextStyle(
        fontSize: 35,
        decorationColor: Colors.red,
      ),
    ),
    useMaterial3: true,
    // useMaterial3: Platform.isAndroid ? true : false,
  );
}
