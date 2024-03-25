import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/features/home/home.dart';
import 'package:flutter_firebase/features/login/login.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const Home();
          } else {
            return const Login();
          }
        }),
      ),
    );
  }
}
