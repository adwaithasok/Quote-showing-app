import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quoteapp/pages/homepage.dart';
import 'package:quoteapp/pages/intro_page.dart';

// ignore: use_key_in_widget_constructors
class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return  home();
    } else {
      return  IntroPage();
    }
  }
}
