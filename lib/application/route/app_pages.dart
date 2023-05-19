

import 'package:go_router/go_router.dart';

import '../../presentation/pages/splash_screen.dart';
import 'app_route.dart';

class AppPages {
  static GoRouter router = GoRouter(initialLocation: '/', routes: [
      GoRoute(
          name: AppRoutes.splash,
          path: AppRoutes.splash,
      builder: ((context, state) => const SplashScreen())),
      ]);
}