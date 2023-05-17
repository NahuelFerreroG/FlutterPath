import 'package:ejercicio5/config/router/app_router.dart';
import 'package:ejercicio5/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDarkMode: false, selectedColor:1 ).getTheme(),
    );
  }
}
