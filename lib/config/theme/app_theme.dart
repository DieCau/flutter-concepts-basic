import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      elevation: 20,
    )
  );  
}