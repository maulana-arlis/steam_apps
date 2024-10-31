import 'package:flutter/material.dart';

import '../utils/route_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Steam Mobile',
      initialRoute: RouteApp.splash,
      onGenerateRoute: RouteApp.generateRoute,
    );
  }
}
