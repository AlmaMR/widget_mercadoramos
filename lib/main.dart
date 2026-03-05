import 'package:flutter/material.dart';
import 'package:widget_mercadoramos/config/router/app_router.dart';
import 'package:widget_mercadoramos/config/theme/app_theme.dart';
//import 'package:widget_mercadoramos/presentacion/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 10).themeData(),
      routerConfig: appRouter,
      // routerDelegate: appRouter.routerDelegate,
      // routeInformationParser: appRouter.routeInformationParser,
    );
  }
}
