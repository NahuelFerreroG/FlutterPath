import 'package:flutter/material.dart';


//Lista de colores
const colorList = <Color> [
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.redAccent,
  Colors.orange,
  Colors.deepOrange,
  Colors.yellow,
  Colors.blue,
  Colors.deepPurple,
  Colors.cyan,
  Colors.limeAccent,
  Colors.green,
  Colors.tealAccent  
];


//En esta clase están las características que quiero mantener del tema y tiene
//dos propiedades: el color y el modo oscuro.
class AppTheme {
  final int selectedColor;
  final bool isDarkMode;
  
  //Estos son los valores por defecto.
  AppTheme({
    this.selectedColor = 5,
    this.isDarkMode = true,
  }): assert(selectedColor >= 0 && selectedColor < colorList.length);

  //Este es el método que llamo para en el main configurar el tema.
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false)
  );


  //Esto método me sirve para la pantalla de cambios de tema... cuando cambio el
  //modo hago una copia y solo mando el color. Cuando cambio el color hago una
  //copia y solo mando el modo.
  AppTheme copyWith({
    int? selecterColor,
    bool? isDarkMode,
  }) => AppTheme(
    isDarkMode:isDarkMode?? this.isDarkMode,
    selectedColor: selectedColor?? this.selectedColor,
  );
}