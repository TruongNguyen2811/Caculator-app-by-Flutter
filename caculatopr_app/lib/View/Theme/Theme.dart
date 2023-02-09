import 'package:flutter/material.dart';

class Themes {

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[800] ,
    buttonColor: Colors.white.withOpacity(0.3),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Colors.white),
      headlineLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.green),
      // displayLarge: TextStyle(color: Colors.white),
    )
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[200],
    buttonColor: Colors.grey.withOpacity(0.3),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.black),
      displaySmall: TextStyle(color: Colors.green),
      // displayLarge: TextStyle(color: Colors.white),
    )
  );
}