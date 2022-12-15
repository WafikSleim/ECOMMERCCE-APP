import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/route_manger.dart';
import 'package:flutter/material.dart';

import '../core/resources/theme_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoutes,
      initialRoute: RouteManger.splash,
      theme: ThemeManger.light,
    );
  }
}