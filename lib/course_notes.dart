import 'notes_2yr.dart';
import 'notes_3yr.dart';
import 'package:flutter/material.dart';
import 'notes_1yr.dart';
import 'notes_4yr.dart';

class notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Notes'),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage('assets/images/notes2.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Flexible(
                child: GridView.count(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2
                      : 4,
              //physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              primary: false,
              children: <Widget>[
                Theme(
                  data: ThemeData(splashColor: Colors.blue),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yearone()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yeartwo()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yearthree()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yearfour()));
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
                                    'FOURTH YEAR',
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
            )),
          ],
        ),
      ),
    );
  }
}
