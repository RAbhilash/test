import 'package:flutter/material.dart';
import 'package:app/books1.dart';
import 'package:app/books2.dart';
import 'package:app/books3.dart';
import 'package:app/books4.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Books',
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
                child: Container(
                  height: hp(45),
                  width: wp(45),
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      image: DecorationImage(
                    image: AssetImage('assets/images/lib1.png'),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
            ),
            Container(
              height:hp(6),
              width: wp(100),
              child:Align(
                alignment: Alignment.topCenter,
                              child: Text('Select Year',style: TextStyle(
                  fontSize:hp(5),
                  
                  // fontWeight:FontWeight.bold,
                ),),
              )
            ),
            SizedBox(
              height:hp(1),
            ),
            Container(
              height:hp(65),
              width:wp(100),
              child: Flexible(
                child: Ink(
                  color: Colors.white,
                  child: Center(
                    child: GridView.count(
                      shrinkWrap: true,
                      padding: EdgeInsets.fromLTRB(20, 20, 15, 15),
                      crossAxisCount: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 2
                                : 4,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 20,
                      primary: false,
                      children: <Widget>[
                        Theme(
                          data: ThemeData(splashColor: Colors.blue),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => booksyearone()));
                            },
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(220, 220, 220, 200),
                                    border: Border(
                                        bottom: BorderSide(
                                      width: 10,
                                      color: Colors.blue,
                                    ))),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Image(
                                            width: 100,
                                            image: AssetImage(
                                                'assets/images/yearone.png')),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                            'FIRST YEAR',
                                            style: TextStyle(
                                              fontFamily: "Montserrat Regular",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(splashColor: Colors.red),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => booksyeartwo()));
                            },
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(220, 220, 220, 200),
                                    border: Border(
                                        bottom: BorderSide(
                                      width: 10,
                                      color: Colors.red,
                                    ))),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Image(
                                            width: 100,
                                            image: AssetImage(
                                                'assets/images/yeartwo.png')),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                            'SECOND YEAR',
                                            style: TextStyle(
                                              fontFamily: "Montserrat Regular",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(splashColor: Colors.purple),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => booksyearthree()));
                            },
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(220, 220, 220, 200),
                                    border: Border(
                                        bottom: BorderSide(
                                      width: 10,
                                      color: Colors.purple,
                                    ))),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Image(
                                            width: 100,
                                            image: AssetImage(
                                                'assets/images/yearthree.png')),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                            'THIRD YEAR',
                                            style: TextStyle(
                                              fontFamily: "Montserrat Regular",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(splashColor: Colors.orange),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => booksyearfour()));
                            },
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(220, 220, 220, 200),
                                    border: Border(
                                        bottom: BorderSide(
                                      width: 10,
                                      color: Colors.orange,
                                    ))),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Image(
                                            width: 100,
                                            image: AssetImage(
                                                'assets/images/yearfour.png')),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                            'Fourth YEAR',
                                            style: TextStyle(
                                              fontFamily: "Montserrat Regular",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
