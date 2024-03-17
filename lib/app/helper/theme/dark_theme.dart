import 'package:flutter/material.dart';

ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: Colors.grey.shade800,
      primary: Colors.grey.shade600,
      secondary: Colors.grey.shade400,
      inversePrimary: Colors.grey.shade300),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.grey[300],
        displayColor: Colors.white,
      ),
);
