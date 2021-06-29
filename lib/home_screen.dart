import 'dart:math';

import 'package:app/GPA.dart';
import 'package:app/books.dart';
import 'package:app/course_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/placment.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:app/aboutus.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_beautiful_popup/main.dart';
// import 'package:foldable_sidebar/foldable_sidebar.dart';
// import 'package:swipedetector/swipedetector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

launchurl(url) async {
  if (await canLaunch(url))
    await launch(url);
  else
    throw 'Error launching url';
}

_sendMail() async {
  // Android and iOS
  const uri = 'mailto:sample345111@gmail.com'; //?&body=Hello%20World';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

class _HomeScreenState extends State<HomeScreen> {
  //main home screen

  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    var diagonal =
        sqrt(((size.height) * (size.height)) + ((size.width) * (size.width)));
    return Scaffold(
        backgroundColor: Colors.red[300],
        body: Builder(
            // builder is used only for the snackbar, if you don't want the snackbar you can remove
            // Builder from the tree
            builder: (BuildContext context) => HawkFabMenu(
                  icon: AnimatedIcons.menu_arrow,
                  fabColor: Color.fromRGBO(106, 210, 211, 1.0),
                  iconColor: Colors.black38,
                  items: [
                    HawkFabMenuItem(
                      label: 'About us',
                      ontap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 150),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                // animation = CurvedAnimation(
                                //     //animation
                                //     parent: animation,
                                //     curve: Curves.elasticInOut);
                                return ScaleTransition(
                                  alignment: Alignment.center,
                                  scale: animation,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return aboutus();
                              },
                            ));
                        // Scaffold.of(context)..hideCurrentSnackBar();
                        // Scaffold.of(context).showSnackBar(
                        //   SnackBar(content: Text('About u')),
                      },
                      icon: Icon(MyFlutterApp.aboutus),
                      color: Colors.red,
                      labelColor: Colors.blue,
                    ),
                    HawkFabMenuItem(
                      label: 'ERP',
                      ontap: () {
                        // Scaffold.of(context)..hideCurrentSnackBar();
                        // Scaffold.of(context).showSnackBar(
                        //   SnackBar(content: Text('ERP')),)
                        launchurl('https://evarsity.srmist.edu.in/srmsip/');
                      },
                      icon: Icon(Icons.comment),
                      labelColor: Colors.white,
                      labelBackgroundColor: Colors.blue,
                    ),
                    HawkFabMenuItem(
                      label: 'Feedback',
                      ontap: () {
                        _sendMail();
                      },
                      icon: Icon(Icons.comment),
                      labelColor: Colors.white,
                      labelBackgroundColor: Colors.blue,
                    ),
                  ],

                  // bottomNavigationBar: BottomNavigationBar(
                  //   items: const <BottomNavigationBarItem>[
                  //     BottomNavigationBarItem(
                  //       icon: Icon(Icons.home),
                  //       label: 'Home',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       icon: Icon(Icons.business),
                  //       label: 'Business',
                  //     ),
                  //   ],
                  // ),

                  body: Stack(
                    fit: StackFit.loose,
                    children: <Widget>[
                      Stack(
                        children: [
                          Column(
                            children: [
                              // SizedBox(height: 70),
                              Container(
                                height: diagonal * .35,
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
                            SizedBox(height: diagonal * .068),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 2),
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                                child: Container(
                                  height: diagonal * .27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            "assets/images/gif1.gif")),
                                  ),
                                ),
                              ),
                            )
                          ])
                        ],
                      ),
                      SafeArea(
                        //icon,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 15, right: 15, left: 15, bottom: 5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: 0,
                                    right: 0,
                                    left: 0,
                                    bottom: size.height * .1),
                                height:
                                    diagonal * .175, //this is the fucking stuff

                                // color: Colors.yellow,
                                margin: EdgeInsets.only(
                                    bottom: diagonal *
                                        .17), //change this argument here
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        height: size.height * .2,
                                        width: size.width * .2,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border:
                                              Border.all(color: Colors.black),
                                          image: new DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo.png'),
                                          ),
                                          shape: BoxShape.circle,
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: Colors.black,
                                                offset: Offset(1.0, 1.0),
                                                blurRadius: 10)
                                          ],
                                        )),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        DefaultTextStyle(
                                          style: TextStyle(
                                              fontSize:
                                                  ResponsiveFlutter.of(context)
                                                      .fontSize(3),
                                              color: Colors.black),
                                          child: Text(
                                            "   SRM MATE",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily:
                                                    'MyFlutterApp.AlluraRegular'),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // Container(
                              //   height: size.height * .05, // to make this responsive
                              // ),

                              Container(
                                height: hp(55),
                                //  height: 300,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: GridView.count(
                                        // physics: NeverScrollableScrollPhysics(),
                                        // padding: const EdgeInsets.only(bottom: 20),
                                        crossAxisCount: MediaQuery.of(context)
                                                    .orientation ==
                                                Orientation.portrait
                                            ? 2
                                            : 4,
                                        mainAxisSpacing: 1,
                                        crossAxisSpacing: 5,
                                        primary: true,
                                        children: <Widget>[
                                          //this is personal data
                                          //card 1: personal2
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    transitionDuration:
                                                        Duration(seconds: 1),
                                                    transitionsBuilder:
                                                        (context,
                                                            animation,
                                                            animationTime,
                                                            child) {
                                                      animation =
                                                          CurvedAnimation(
                                                              parent: animation,
                                                              curve: Curves
                                                                  .elasticInOut);
                                                      return ScaleTransition(
                                                        alignment:
                                                            Alignment.center,
                                                        scale: animation,
                                                        child: child,
                                                      );
                                                    },
                                                    pageBuilder: (context,
                                                        animation,
                                                        animationTime) {
                                                      return placement();
                                                    },
                                                  ));
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              elevation: 10,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Image.asset(
                                                          'assets/images/fang1.png',
                                                          alignment:
                                                              Alignment.center,
                                                          fit: BoxFit.fill),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Placement Material',
                                                      style: TextStyle(
                                                          fontSize: hp(2.05),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'cardTextStyle'),
                                                    ),
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
                                                    transitionDuration:
                                                        Duration(
                                                            milliseconds: 1000),
                                                    transitionsBuilder:
                                                        (context,
                                                            animation,
                                                            animationTime,
                                                            child) {
                                                      animation =
                                                          CurvedAnimation(
                                                              parent: animation,
                                                              curve: Curves
                                                                  .elasticInOut);
                                                      return ScaleTransition(
                                                        alignment:
                                                            Alignment.center,
                                                        scale: animation,
                                                        child: child,
                                                      );
                                                    },
                                                    pageBuilder: (context,
                                                        animation,
                                                        animationTime) {
                                                      return Books();
                                                    },
                                                  ));
                                            },
                                            child: Card(
                                              //card 2:Books
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Expanded(
                                                      flex: 5,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image.asset(
                                                          'assets/images/books.png', //add img here
                                                        ),
                                                      ),
                                                    ),
                                                    //SizedBox(height: 10),
                                                    // SizedBox(height: 20),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Text('Books',
                                                          style: TextStyle(
                                                              fontSize: hp(2.4),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'cardTextStyle')),
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
                                                  PageRouteBuilder(
                                                    transitionDuration:
                                                        Duration(
                                                            milliseconds: 1000),
                                                    transitionsBuilder:
                                                        (context,
                                                            animation,
                                                            animationTime,
                                                            child) {
                                                      animation =
                                                          CurvedAnimation(
                                                              parent: animation,
                                                              curve: Curves
                                                                  .elasticInOut);
                                                      return ScaleTransition(
                                                        alignment:
                                                            Alignment.center,
                                                        scale: animation,
                                                        child: child,
                                                      );
                                                    },
                                                    pageBuilder: (context,
                                                        animation,
                                                        animationTime) {
                                                      return Gpa();
                                                    },
                                                  ));
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              elevation: 10,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/calc.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                        'GPA Calculator',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: hp(2.4),
                                                            fontFamily:
                                                                'cardTextStyle')),
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
                                                    transitionDuration:
                                                        Duration(seconds: 1),
                                                    transitionsBuilder:
                                                        (context,
                                                            animation,
                                                            animationTime,
                                                            child) {
                                                      animation =
                                                          CurvedAnimation(
                                                              parent: animation,
                                                              curve: Curves
                                                                  .elasticInOut);
                                                      return ScaleTransition(
                                                        alignment:
                                                            Alignment.center,
                                                        scale: animation,
                                                        child: child,
                                                      );
                                                    },
                                                    pageBuilder: (context,
                                                        animation,
                                                        animationTime) {
                                                      return notes();
                                                    },
                                                  ));
                                            },
                                            child: Card(
                                              //card 4:course notes
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              elevation: 10,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/notes.png',
                                                        // height: 100,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text('Course Notes',
                                                        style: TextStyle(
                                                            fontSize: hp(2.3),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'cardTextStyle')),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
