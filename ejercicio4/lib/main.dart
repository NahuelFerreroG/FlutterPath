import 'package:ejercicio4/config/theme/app_theme.dart';
import 'package:ejercicio4/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDarkMode: false, selectedColor: 8).getTheme(),
      home: const HomeScreen()
    );
  }
}
