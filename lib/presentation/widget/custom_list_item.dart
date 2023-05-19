import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constant/color_manager.dart';
import '../../utils/constant/font_manager.dart';
import 'custom_text.dart';

Widget customListItem({
  required String companyName,
  required String email,
  required String phone,
}) =>
    ListTile(
      isThreeLine: true,
      title: CustomText(
          text: companyName,
          color: ColorManager.darkBlue,
          fontWeight: FontWeightManager.medium,
          fontSize: FontSize.s16),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: email,
              color: ColorManager.grey,
              fontSize: FontSize.s12),
          CustomText(
              text: phone,
              color: ColorManager.grey,
              fontSize: FontSize.s12),
        ],
      ),
    );
