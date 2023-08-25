import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0 //sin sombra

        ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.green)),
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
  );

  static const Color seccundary = Colors.green;
  static final ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0 //sin sombra

        ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: Color.fromARGB(255, 54, 190, 244)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 243, 215, 33)))),
  );
}