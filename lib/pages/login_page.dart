import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quoteapp/pages/homepage.dart';

import 'randome.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 3,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.black),
                ),
                children: [
                  TextSpan(text: "Hello,\n", style: TextStyle(fontSize: 16, color: Colors.blue)),
                  TextSpan(
                      text: "Welcome to Quote!",
                      style: TextStyle(fontSize: 25,color: Colors.blue)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Mobile Number,"),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home()));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Continue",),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
