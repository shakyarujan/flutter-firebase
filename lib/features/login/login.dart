import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/commons/control/custom_button.dart';
import 'package:flutter_firebase/commons/control/custom_textfield.dart';
import 'package:flutter_firebase/features/login/register.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  final Function()? onTap;
  const Login({super.key, this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Flutter ',
                      style: TextStyle(fontSize: 23.0),
                    ),
                    TextSpan(text: '🔥 Base', style: TextStyle(fontSize: 23.0)),
                  ],
                ),
              ),
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                text: 'Sign In',
                textColor: Theme.of(context).colorScheme.primary,
                radius: 8.0,
                color: Theme.of(context).colorScheme.inversePrimary,
                onTap: signIn,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ),
                      );
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
