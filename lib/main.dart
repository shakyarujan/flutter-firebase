import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/helper/theme/dark_theme.dart';
import 'package:flutter_firebase/app/helper/theme/light_theme.dart';
import 'package:flutter_firebase/features/login/login.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: Login(),
    );
  }
}
