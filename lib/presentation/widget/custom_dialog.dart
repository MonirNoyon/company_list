import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/presentation/widget/custom_textfield.dart';
import 'package:company_list/utils/constant/color_manager.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:company_list/utils/constant/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

Widget customDialog({required BuildContext context}) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      insetPadding: const EdgeInsets.all(AppPadding.p12),
      //this right here
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(CupertinoIcons.clear),
            ),
          ),
          CustomText(
              text: 'Create a New Company',
              color: ColorManager.darkBlue,
              fontSize: FontSize.s20,
              fontWeight: FontWeightManager.semiBold),
          customTextField(hintText: 'Company Name'),
          customTextField(hintText: 'Work Email'),
          customTextField(hintText: 'Password'),
          customTextField(hintText: 'Phone'),
          SizedBox(height: AppMargin.m2.h,),
          TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: ColorManager.primary,
                elevation: 5,
                fixedSize: Size.fromWidth(MediaQuery.of(context).size.width*0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              child: CustomText(text: 'Create a New Company',color: ColorManager.white)
          ),
          SizedBox(height: AppMargin.m2.h,),
        ],
      ),
    );
