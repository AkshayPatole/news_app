import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/home_screen/home_screen.dart';

import '../../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashscreen = "/splash-screen";
  static const String loginscreen = "/login-screen";
  static const String phonescreen = "/phone-screen";
  static const String otpscreen = "/otp-screen";
  static const String homescreen = "/home-screen";

  GoRouter get router => _goRouter;

  final GoRouter _goRouter = GoRouter(
    initialLocation: splashscreen,
    routes: [
      GoRoute(
        path: splashscreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: loginscreen,
        builder: (context, state) => const HomeScreen(),
      ),
      // GoRoute(
      //   path: phonescreen,
      //   builder: (context, state) => PhoneAuthScreen(),
      // ),
      // GoRoute(path: homescreen,
      // builder: (context, state) => HomeScreen(),
      // )
    ],
  );
}
