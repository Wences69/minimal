import 'package:flutter/material.dart';
import 'package:minimal/CustomWidgets/CustomButton.dart';
import 'package:minimal/CustomWidgets/CustomTextField.dart';

class LoginView extends StatelessWidget {
  final void Function()? onTap;

  LoginView({super.key, required this.onTap});

  // text controllers
  final TextEditingController tecEmail=TextEditingController();
  final TextEditingController tecPasswd=TextEditingController();

  // login method
  void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),

                // app name
                Text(
                    "M I N I M A L", style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 50),

                // email textfield
                CustomTextField(
                    sHint: "Email",
                    blIsPasswd: false,
                    tecControler: tecEmail
                ),

                const SizedBox(height: 10),

                // password textfield
                CustomTextField(
                    sHint: "Password",
                    blIsPasswd: true,
                    tecControler: tecPasswd
                ),

                const SizedBox(height: 10),

                // forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot password?"),
                  ],
                ),

                const SizedBox(height: 25),

                // sign in button
                CustomButton(
                    sText: "Login",
                    onTap: login
                ),

                const SizedBox(height: 25),

                // don't have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary)
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        " Register here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
