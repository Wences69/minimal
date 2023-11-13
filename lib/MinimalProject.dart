import 'package:flutter/material.dart';
import 'Theme/DarkMode.dart';
import 'Theme/LightMode.dart';
import 'auth/Login_or_register.dart';

class MinimalProject extends StatelessWidget {
  const MinimalProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minimal Project",
      home: LoginOrRegister(),
      theme: LightMode,
      darkTheme: DarkMode,
    );
  }
  
}