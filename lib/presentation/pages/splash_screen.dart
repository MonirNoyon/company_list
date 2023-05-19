import 'dart:async';

import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../application/route/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1000), () async{
      context.goNamed(AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomText(
              text: 'Splash Screen',
              fontSize: FontSize.s20,
              fontWeight: FontWeightManager.medium)
        ],
      ),
    );
  }
}
