import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String sHint;
  final bool blIsPasswd;
  final TextEditingController tecControler;

  const CustomTextField({
    super.key,
    required this.sHint,
    required this.blIsPasswd,
    required this.tecControler,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tecControler,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        hintText: sHint,
      ),
      obscureText: blIsPasswd,
    );
  }

  
}