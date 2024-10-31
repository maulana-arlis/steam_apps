import 'package:steam_apps/features/main/menu_screen.dart';
import 'package:flutter/material.dart';
import '../../features/main/welcome_screen.dart';

class RouteApp {
  static const String splash = '/';
  static const String main = '/main';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case main:
        return MaterialPageRoute(builder: (_) => const MainMenuScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No route defined for ${settings.name}'),
                ));
    }
  }
}
