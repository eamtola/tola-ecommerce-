import 'package:e_commerce_app/authentication/login_screen/login_screen_view.dart';
import 'package:e_commerce_app/home_screen/home_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  Authentication({Key? key}) : super(key: key);

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (auth.currentUser != null) {
      return const HomeScreenView();
    } else {
      return const LoginScreen();
    }
  }
}
