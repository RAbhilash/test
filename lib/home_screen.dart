import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app/GPA.dart';
import 'package:app/books.dart';
import 'package:app/course_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/placment.dart';
import 'package:responsive_screen/responsive_screen.dart';
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
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
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
                      height: size.height * .4,
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
                    height: size.height * .087,
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 2),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                      child: Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
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
                padding:
                    EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 3),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * .2,

                      // color: Colors.yellow,
                      margin: EdgeInsets.only(bottom: size.height * .24),
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
                                child: Text("   App Name"),
                              ),
                              Text("damm"),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   height: size.height * .05, // to make this responsive
                    // ),
                    Expanded(
                      flex: 1,
                      child: GridView.count(
                        // physics: NeverScrollableScrollPhysics(),
                        // padding: const EdgeInsets.only(bottom: 20),
                        crossAxisCount: MediaQuery.of(context).orientation ==
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
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                          'assets/images/fang1.png',
                                          alignment: Alignment.center,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Placement Material',
                                      style: TextStyle(
                                          // fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'cardTextStyle'),
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
                                    transitionDuration: Duration(seconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.easeOutExpo);
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
                                        child:Image.asset(
                                            'assets/images/books.png', //add img here
                                            height: hp(10)),
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
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/images/calc.png',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text('GPA Calculator',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            // fontSize: 20,
                                            fontFamily: 'cardTextStyle')),
                                  )
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
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/notes.png',
                                        // height: 100,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text('Course Notes',
                                        style: TextStyle(
                                            // fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'cardTextStyle')),
                                  )
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
            ),
          ],
        ),
      ),
    );
  }
}
