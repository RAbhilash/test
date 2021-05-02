import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app/GPA.dart';
import 'package:app/books.dart';
import 'package:app/course_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/placment.dart';
import 'package:app/aboutus.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1)); //this is not really working

    return Scaffold(
      body: Container(
        color: Colors.red[300],
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Stack(
              children: [
                Column(
                  children: [
                    // SizedBox(height: 70),
                    Container(
                      height: size.height * .45,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 40.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        ),
                      ),
                    )
                  ],
                ),
                Column(children: [
                  // SizedBox(height: size.height * .099),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 75, 20, 2),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                      child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          // border: Border.all(
                          //   color:Colors.redAccent,
                          // ),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage("assets/images/gif1.gif")),
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * .15,

                      // color: Colors.yellow,
                      margin: EdgeInsets.only(bottom:200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/en/f/fe/Srmseal.png'),
                          ),
                          // SizedBox(
                          //   width: 55,
                          // ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              DefaultTextStyle(
                                style: const TextStyle(
                                    fontSize: 21, color: Colors.black),
                                child: Text("           App Name",style: TextStyle(
                                  fontWeight:FontWeight.bold,
                                ),),
                              ),
                              Text("                  Fucking cool"),
                              // Text(
                              //   '4101410141',
                              //   style: TextStyle(
                              //       fontSize: 14,
                              //       color: Colors.redAccent,
                              //       fontFamily: "Montserrat Regular"),
                              // )
                            ],
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   height: size.height * .05, // to make this responsive
                    //   // decoration: BoxDecoration(
                    //   // color: Colors.black,
                    //   // borderRadius: BorderRadius.circular(1000)),
                    // ),
                    Expanded(
                      flex: 1,
                      child: GridView.count(
                        shrinkWrap: true
                        ,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 0),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5,
                        primary: false,
                        crossAxisCount: 2,
                        children: <Widget>[
                          //this is personal data
                          //card 1: personal
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.elasticInOut);
                                      return ScaleTransition(
                                        alignment: Alignment.center,
                                        scale: animation,
                                        child: child,
                                      );
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return placement();
                                    },
                                  ));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('assets/images/fang.png',
                                      alignment: Alignment.center,
                                      fit: BoxFit.fill),
                                  Text(
                                    'Placement Material',
                                    style: TextStyle(
                                        // fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'cardTextStyle'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.elasticInOut);
                                      return ScaleTransition(
                                        alignment: Alignment.center,
                                        scale: animation,
                                        child: child,
                                      );
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return Books();
                                    },
                                  ));
                            },
                            child: Card(
                              //card 2:Books
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //     fit: BoxFit.fill,
                                    //     alignment: Alignment.topCenter,
                                    //     // image: AssetImage('assets/images/g1.jpg')
                                    //     ),
                                    ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                            'assets/images/books.png', //add img here
                                            height: 100),
                                      ),
                                    ),
                                    //SizedBox(height: 10),
                                    // SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Books',
                                          style: TextStyle(
                                              // fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'cardTextStyle')),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //card 3:gpa
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Gpa()));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/calc.png',
                                    height: 100,
                                  ),
                                  SizedBox(height: 30),
                                  Text('GPA Calculator',
                                      style: TextStyle(
                                          // fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'cardTextStyle'))
                                ],
                              ),
                            ),
                          ),

                          // InkWell(
                          //   borderRadius: BorderRadius.circular(16),
                          //   splashColor: Colors.greenAccent[210],
                          //   child: Card(
                          //     // color: Colors.transparent,
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(20)),
                          //     elevation: 20,
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: <Widget>[
                          //         SvgPicture.network(
                          //           'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                          //           height: 128,
                          //         ),
                          //         Text(
                          //           'Course Booking',
                          //           style: cardTextStyle,
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          //   onTap: () {
                          //     print("Tapped");
                          //   },
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.elasticInOut);
                                      return ScaleTransition(
                                        alignment: Alignment.center,
                                        scale: animation,
                                        child: child,
                                      );
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return notes();
                                    },
                                  ));
                            },
                            child: Card(
                              //card 4:course notes
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/notes.png',
                                    height: 100,
                                  ),
                                  SizedBox(height: 30),
                                  Text('Course Notes',
                                      style: TextStyle(
                                          // fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'cardTextStyle'))
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height:300,
                          // ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(55,0,0,0),
                        //   child: Container(
                        //     padding: const EdgeInsets.fromLTRB(0,0, 15,5),
                        //     decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color:Colors.blue
                        //     )  
                        //     ),
                            
                        //     child:
                        //         Text(
                        //           '@ here comes the footer',style:TextStyle(fontFamily:'Cupartino')
                        //         ),
                              
                            
                        //   ),
                        // )
                        ],
                      ),
                    ),
                    SizedBox(
                      height:19,
                    ),
                  Row(
                    children: <Widget>[
                      SizedBox(width:55),
                      Container(
                        
                        // decoration:BoxDecoration(
                        //   border:Border.all(
                        //     color:Colors.white,
                          
                        //   )
                        // ),
                        child: Text('This is our footer'),

                      ),
                      SizedBox(
                        width:35
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration: Duration(seconds: 1),
                                      transitionsBuilder: (context, animation,
                                          animationTime, child) {
                                        animation = CurvedAnimation(
                                            parent: animation,
                                            curve: Curves.elasticInOut);
                                        return ScaleTransition(
                                          alignment: Alignment.center,
                                          scale: animation,
                                          child: child,
                                        );
                                      },
                                      pageBuilder:
                                          (context, animation, animationTime) {
                                        return aboutus();
                                      },
                                    ));
                        },
                          child: Container(
                          child:Text(" don't click!"),
                        ),
                      )
                    ],
                  )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
