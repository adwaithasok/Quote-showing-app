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
    IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.black,)),
    
                
    
          Container(
                      alignment: Alignment.bottomCenter,
                      width: 400.0,
                      height: 250,
                     
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
              image: new AssetImage("assets/random.jpg"),
              fit: BoxFit.cover)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => randome()));
                        },
                      ),
                    ),

                    SizedBox(height: 100,),
                    InkWell(
                      onTap: (){
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
                              fit: BoxFit.cover)),
                        width: 400.0,
                        height: 380,
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
      )
    );
    
  }
}