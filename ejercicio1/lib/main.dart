import 'package:ejercicio1/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    //final colors = Theme.of(context).colorScheme;
    //final textStyle = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

