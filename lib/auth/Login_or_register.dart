import 'package:flutter/material.dart';
import 'package:minimal/OnBoarding/LoginView.dart';
import 'package:minimal/OnBoarding/RegisterView.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially, show login page
  bool showLoginView=true;

  // toogle between login and register
  void toogle(){
    setState(() {
      showLoginView = !showLoginView;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginView){
      return LoginView(onTap: toogle);
    }
    else {
      return RegisterView(onTap: toogle);
    }
  }
}