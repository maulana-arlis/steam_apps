import 'package:steam_apps/features/main/menu_screen.dart';
import 'package:flutter/material.dart';
import '../../features/main/welcome_screen.dart';

class RouteApp {
  // Define route names
  static const String splash = '/';
  static const String main = '/main';

  // Define route settings
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case main:
        return MaterialPageRoute(builder: (_) => const MainMenuScreen());
      default:
        // If no matching route, show a 404 page or error screen
        return MaterialPageRoute(
            builder: (_) => Container(
                    child: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
