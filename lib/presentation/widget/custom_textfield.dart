import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constant/font_manager.dart';


Widget customTextField({
  required String hintText,
  FormFieldValidator<String>? validator,
  ValueChanged<String>? onChanged,
  TextEditingController? controller,
  TextInputType? textInputType,
  double leftPadding = 12,
  double rightPadding = 12,
  double topPadding = 8,
  double bottomPadding = 8,
}) =>
    Padding(
      padding: EdgeInsets.only(left: leftPadding,right: rightPadding,top: topPadding,bottom: bottomPadding),
      child: TextFormField(
        validator: validator,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(fontSize: FontSize.s14),
        ),
        onChanged: onChanged,
      ),
    );
