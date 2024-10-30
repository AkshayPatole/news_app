import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'utils/routes/app_routes.dart';
import 'package:reactive_theme/reactive_theme.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:http/http.dart' as http;

import 'package:intl/intl_browser.dart';
import 'package:cached_network_image/cached_network_image.dart';
  
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  final thememode = await ReactiveMode.getSavedThemeMode();

  runApp(MyApp(
    saveThemeMode: thememode,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, this.saveThemeMode});
  final ThemeMode? saveThemeMode;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 740),
      child: ReactiveThemer(
        builder: (reactiveMode) {
          return MaterialApp.router(
            routeInformationParser: appRoutes.router.routeInformationParser,
            routeInformationProvider: appRoutes.router.routeInformationProvider,
            routerDelegate: appRoutes.router.routerDelegate,
            themeMode: reactiveMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.light,
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.dark,
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),
          );
        },
      ),
    );
  }
}
