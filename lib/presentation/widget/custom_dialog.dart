import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/presentation/widget/custom_textfield.dart';
import 'package:company_list/utils/constant/color_manager.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:company_list/utils/constant/values_manager.dart';
import 'package:company_list/utils/extension/validation_form_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';



Widget customDialog({
  required BuildContext context,
  required GlobalKey formKey,
  required Function() onTap,
  required TextEditingController companyController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController phoneController,
}) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      insetPadding: const EdgeInsets.all(AppPadding.p12),
      //this right here
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
              customTextField(
                hintText: 'Company Name',
                controller: companyController,
                validator: (val) => val!.isNotEmpty ? null : "Empty not allowed",
              ),
              customTextField(
                hintText: 'Work Email',
                controller: emailController,
                validator: (val) => val!.isValidEmail ? null : "Enter valid email",
              ),
              customTextField(
                hintText: 'Password',
                controller: passwordController,
                validator: (val) => val!.validPassword
                    ? null
                    : "At least 6 length with one upper and lower char.",
              ),
              customTextField(
                hintText: 'Phone',
                controller: phoneController,
                textInputType: TextInputType.phone,
                validator: (val) =>
                    val!.isValidPhone ? null : "Phone number must be 11 digit",
              ),
              SizedBox(
                height: AppMargin.m2.h,
              ),
              TextButton(
                  onPressed: onTap,
                  style: TextButton.styleFrom(
                      backgroundColor: ColorManager.primary,
                      elevation: 5,
                      fixedSize:
                          Size.fromWidth(MediaQuery.of(context).size.width * 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: CustomText(
                      text: 'Create a New Company',
                      color: ColorManager.white,
                      fontWeight: FontWeightManager.semiBold)),
              SizedBox(
                height: AppMargin.m2.h,
              ),
            ],
          ),
        ),
      ),
    );
