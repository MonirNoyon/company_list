import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'application/route/app_pages.dart';
import 'application/theme/theme_manager.dart';

void main() {
  runApp( ProviderScope(child: Onboarding()));
}

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          routerConfig: AppPages.router,
        );
      }
    );
  }
}
