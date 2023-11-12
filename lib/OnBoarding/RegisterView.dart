import 'package:flutter/material.dart';
import 'package:minimal/CustomWidgets/CustomButton.dart';
import 'package:minimal/CustomWidgets/CustomTextField.dart';

class RegisterView extends StatelessWidget {
  final void Function()? onTap;

  RegisterView({super.key, required this.onTap});

  // text controllers
  final TextEditingController tecUsername=TextEditingController();
  final TextEditingController tecEmail=TextEditingController();
  final TextEditingController tecPasswd=TextEditingController();
  final TextEditingController tecConfirmPasswd=TextEditingController();

  // register method
  void register(){}

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

                // username textfield
                CustomTextField(
                    sHint: "Username",
                    blIsPasswd: false,
                    tecControler: tecUsername
                ),

                const SizedBox(height: 10),

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

                // confirm password textfield
                CustomTextField(
                    sHint: "Confirm Password",
                    blIsPasswd: true,
                    tecControler: tecConfirmPasswd
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

                // register button
                CustomButton(
                    sText: "Register",
                    onTap: register
                ),

                const SizedBox(height: 25),

                // don't have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary)
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        " Login here",
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
