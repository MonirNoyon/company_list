import 'package:flutter/material.dart';

import 'application/route/app_pages.dart';
import 'application/theme/theme_manager.dart';

void main() {
  runApp(const Onboarding());
}

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      routerConfig: AppPages.router,
    );
  }
}
