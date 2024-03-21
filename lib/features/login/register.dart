import 'package:flutter/material.dart';
import 'package:flutter_firebase/commons/control/custom_button.dart';
import 'package:flutter_firebase/commons/control/custom_textfield.dart';

class Register extends StatefulWidget {
  final Function()? onTap;
  const Register({super.key, this.onTap});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.app_registration_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Let\'s register for your account'),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  CustomTextField(
                    controller: emailController,
                    hintText: 'Email',
                    borderRadius: 8.0,
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    borderRadius: 8.0,
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.inversePrimary),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  CustomTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    borderRadius: 8.0,
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.inversePrimary),
                    obscureText: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                text: 'Sign Up',
                textColor: Theme.of(context).colorScheme.primary,
                radius: 8.0,
                color: Theme.of(context).colorScheme.inversePrimary,
                onTap: widget.onTap,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
