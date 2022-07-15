import 'package:flutter/material.dart';
import 'package:quoteapp/pages/quoteoftheday.dart';
import 'package:quoteapp/pages/randome.dart';

class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
padding: const EdgeInsets.only(top: 100.0,left: 10,right: 10),     
   child: Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Column(


  children: <Widget>[
    
                
       Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                      alignment: Alignment.bottomCenter,
                      width: 160.0,
                      height: 250,
                     
                       decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/random.jpg"),
              fit: BoxFit.fill)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => randome()));
                        },
                      ),
                    ),

                    SizedBox(width: 25,),
                    InkWell(
                      onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => todaysquot()));
                    },
                      child: Container(
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("assets/todayquote.jpg"),
                              fit: BoxFit.fill)),
                        width: 160.0,
                        height: 250,
                      ),
                    ),
    
        ],
      ),
    
    SizedBox(
      height: 50,
    ),
    
       Row(
       
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
           Container(
                      width: 160.0,
                      height: 250,
                      color: Colors.green,
                    ),
    
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 160.0,
                      height: 250,
                      color: Colors.yellow,
                    ),
    
         
        ],
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
      )
    );
    
  }
}