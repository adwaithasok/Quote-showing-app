import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quoteapp/methods.dart';
import 'package:quoteapp/pages/login_page.dart';
import 'package:quoteapp/pages/quoteoftheday.dart';
import 'package:quoteapp/pages/randome.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 300.0),
                child: IconButton(
                    onPressed: () {
                      logout(context);
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Colors.black,
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 400.0,
                  height: 250,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      image: new DecorationImage(
                          image: new AssetImage("assets/random.jpg"),
                          fit: BoxFit.cover)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => randome()));
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => todaysquot()));
                },
                child: Container(
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      image: new DecorationImage(
                          image: new AssetImage("assets/todayquote.jpg"),
                          fit: BoxFit.fitHeight)),
                  width: 400.0,
                  height: 250,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              // Container(
              //     width: 160.0,
              //             height: 250,

              //     color: Colors.orange,
              // ),

              // Container(
              //             width: 160.0,
              //             height: 250,
              //             color: Colors.orange,
              //           ),
            ],
          ),
        ),
      ),
    ));
  }
}
