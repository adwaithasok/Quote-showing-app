import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quoteapp/methods.dart';
import 'package:quoteapp/pages/homepage.dart';

import 'randome.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Container(
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
                    TextSpan(
                        text: "Hello,\n",
                        style: TextStyle(fontSize: 16, color: Colors.blue)),
                    TextSpan(
                        text: "Welcome to Quote!",
                        style: TextStyle(fontSize: 25, color: Colors.blue)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(labelText: " Email id"),
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'enter valid email '
                        : null,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordcontroller,
                decoration: InputDecoration(labelText: " Password"),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    final form = formKey.currentState!;
                    if (form.validate()){}

                    if (_emailcontroller.text.isNotEmpty &&
                        _passwordcontroller.text.isNotEmpty) {
                      setState(() {
                        isLoading = false;
                      });
                      createAcount(
                              _emailcontroller.text, _passwordcontroller.text)
                          .then((user) {
                        if (user != null) {
                          setState(() {
                            isLoading = false;
                          });

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                          print("loginsucsess");
                        } else {
                          print("loginfailed");
                          setState(() {
                            isLoading = false;
                          });
                        }
                      });
                    } else {
                      print("enter valid fields");
                    }
                  },
                  color: Colors.blue,
                  textColor: Color.fromARGB(255, 3, 3, 3),
                  child: Text(
                    "Continue",
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
