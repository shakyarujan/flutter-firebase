import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  // void signOut() {
  //   FirebaseAuth.instance.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          // IconButton(
          //   onPressed: signOut,
          //   icon: const Icon(Icons.logout),
          // )
        ],
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
