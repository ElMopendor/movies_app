import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 10, color: Colors.black87),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0075FF),
    primary: const Color(0xFF0075FF),
    secondary: const Color(0xFFCC00FF),
    brightness: Brightness.light,
  ),
);

ThemeData darkTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0075FF),
    primary: const Color(0xFF0075FF),
    secondary: const Color(0xFFCC00FF),
    brightness: Brightness.dark,
  ),
);
