import 'package:flutter/material.dart';
import 'package:minimal/Theme/DarkMode.dart';
import 'package:minimal/Theme/LightMode.dart';
import 'package:minimal/auth/Login_or_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: LightMode,
      darkTheme: DarkMode,
    );
  }
}
