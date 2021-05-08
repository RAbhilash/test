import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app/GPA.dart';
import 'package:app/books.dart';
import 'package:app/course_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/placment.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:swipedetector/swipedetector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //your main homescreen content
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
              padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 3),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 0, right: 0, left: 0, bottom: size.height * .1),
                    height: size.height * .2,

                    // color: Colors.yellow,
                    margin: EdgeInsets.only(bottom: size.height * .24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: size.height * .2,
                            width: size.width * .2,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black),
                              image: new DecorationImage(
                                image: AssetImage('assets/images/logo.png'),
                              ),
                              shape: BoxShape.circle,
                            )),
                        //                           child: CircleAvatar(
                        //   radius: 32,
                        //   backgroundImage: Image.asset(
                        //       'assets/images/fang1.png'),
                        // ),

                        // SizedBox(
                        //   width: 55,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            DefaultTextStyle(
                              style:
                                  TextStyle(fontSize: 3, color: Colors.black),
                              child: Text(
                                "   SRM MATE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MyFlutterApp.AlluraRegular'),
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
                                  transitionDuration: Duration(seconds:3),
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
                          onTap:(){
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 3),
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Gpa()));
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
    );
  }
}

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("RetroPortal Studio")
                ],
              )),
          ListTile(
            onTap: () {
              debugPrint("Tapped Profile");
            },
            leading: Icon(Icons.person),
            title: Text(
              "Your Profile",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped settings");
            },
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Payments");
            },
            leading: Icon(Icons.payment),
            title: Text("Payments"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Log Out");
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  //main home screen
  get icon => null;
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
    // FSBStatus status;
    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1)); //this is not really working

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red[300],
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                drawerStatus = drawerStatus == FSBStatus.FSB_OPEN
                    ? FSBStatus.FSB_CLOSE
                    : FSBStatus.FSB_OPEN;
              });
            }),
        body: SwipeDetector(
          swipeConfiguration: SwipeConfiguration(
            //horizontalSwipeMinVelocity: 50,
            horizontalSwipeMinDisplacement: 20,
          ),
          onSwipeRight: () {
            setState(() {
              drawerStatus = FSBStatus.FSB_OPEN;
            });
          },
          onSwipeLeft: () {
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },
          child: FoldableSidebarBuilder(
            drawerBackgroundColor: Colors.red[300],
            drawer: CustomDrawer(
              closeDrawer: () {
                setState(() {
                  drawerStatus = FSBStatus.FSB_CLOSE;
                });
              },
            ),
            screenContents: FirstScreen(),
            status: drawerStatus,
          ),
        ));
  }
}
