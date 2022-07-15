import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:quoteapp/widgets/quote_widget.dart';

class todaysquot extends StatefulWidget {
  @override
  State<todaysquot> createState() => _todaysquotState();
}

class _todaysquotState extends State<todaysquot> {
  var apiURL = "https://zenquotes.io/api/today";

  Future<List<dynamic>> getPost() async {
    final response = await http.get(Uri.parse('$apiURL'));
    return postfromjason(response.body);
  }

  List<dynamic> postfromjason(String str) {
    List<dynamic> jsonData = json.decode(str);
    jsonData.shuffle();
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder<List<dynamic>>(
            future: getPost(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {}
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 0),
                      child: Text("todays Quotes",
                          style: GoogleFonts.oswald(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 50),
                          )),
                    ),
                    PageView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var model = snapshot.data![index];

                          return QuoteWidget(
                            quote: model["q"],
                            author: model['a'],
                            SwipeRight: "",
                            bgColor: Color(0xFF03989e),
                          );
                        }),
                  ],
                );
              } else
                return Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator());
            }));
  }
}
