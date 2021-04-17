import 'package:app/GPA.dart';
import 'package:app/course_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
              // height: size.height * .3,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(220, 220, 220, 150))),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 70),
                  Container(
                    height: size.height * .4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))
                        // bottomLeft: Radius.circular(50),
                        // bottomRight: ),

                        // image: DecorationImage(
                        //     fit: BoxFit.fill,
                        //     image: AssetImage("assets/images/background.png"))
                        ),
                  )
                ],
              ),
              Column(children: [
                SizedBox(height: size.height * .099),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 2),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/tele.png")),
                    ),
                  ),
                )
              ])
            ],
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(
                  10.0), //to do spacing of this safe space and outer boundary
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/en/f/fe/Srmseal.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'SRM_PRO_MAX',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.pinkAccent,
                                  fontSize: 20),
                            ),
                            Text(
                              '.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.redAccent,
                                  fontFamily: "Montserrat Regular"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.all(20),
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 40,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        //this is personal data
                        //card 1: personal
                        Container(
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/personal.png',
                                    height: 100,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Personal Detail',
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            )),
                        Card(
                          //card 2:Books
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/books.png', //add img here
                                height: 100,
                              ),
                              //SizedBox(height: 10),
                              Text(
                                'Books',
                                style: cardTextStyle,
                              )
                            ],
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
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calc.png',
                                  height: 100,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'GPA Calculator',
                                  style: cardTextStyle,
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
                                MaterialPageRoute(
                                    builder: (context) => notes()));
                          },
                          child: Card(
                            //card 4:course notes
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/notes.png',
                                  height: 100,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Course Notes',
                                  style: cardTextStyle,
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
