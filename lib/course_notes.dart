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
      ),
      body: Center(
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: <Widget>[
              Theme(
                data: ThemeData(splashColor: Colors.blue),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => yearone()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: Colors.blue))),
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Image(
                                image: AssetImage('assets/images/yearone.png')),
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
              Theme(
                data: ThemeData(splashColor: Colors.orange),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => yeartwo()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 2, color: Colors.orange))),
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Image(
                                image: AssetImage('assets/images/yeartwo.png')),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                'SECOND YEAR',
                                style:
                                    TextStyle(fontFamily: "Montserrat Regular"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Theme(
                data: ThemeData(splashColor: Colors.purple),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => yearthree()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 2, color: Colors.purple))),
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Image(
                                image:
                                    AssetImage('assets/images/yearthree.png')),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                'THIRD YEAR',
                                style:
                                    TextStyle(fontFamily: "Montserrat Regular"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Theme(
                data: ThemeData(splashColor: Colors.red),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => yearfour()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: Colors.red))),
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 5,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/yearfour.png'))),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                'FOURTH YEAR',
                                style:
                                    TextStyle(fontFamily: "Montserrat Regular"),
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
          );
        }),
      ),
    );
  }
}
