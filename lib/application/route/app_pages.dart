import 'package:company_list/presentation/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/splash_screen.dart';
import 'app_route.dart';

class AppPages {
  static GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
        name: AppRoutes.splash,
        path: AppRoutes.splash,
        builder: ((context, state) => const SplashScreen())),
    GoRoute(
        name: AppRoutes.home,
        path: "/${AppRoutes.home}",
        builder: ((context, state) =>  HomePage())),
  ]);
}
