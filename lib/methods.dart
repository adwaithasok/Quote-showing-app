import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quoteapp/pages/login_page.dart';

Future<User?> createAcount(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;


    await _firestore
        .collection("users")
        .doc(_auth.currentUser?.uid)
        .set({"email": email,});
    if (user == "") {
      print('create acount sucsessfull');

      return user;
    } else {
      print('acout create failed');
    }
    return user;
  } catch (e) {
    print(e);
    return null;
  }
}
Future logout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut().then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
  } catch (e) {
    print("error");
  }
}
