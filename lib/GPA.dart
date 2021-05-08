import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:app/home_screen.dart';
import 'package:app/main.dart';
import 'home_screen.dart';

class Gpa extends StatefulWidget {
  @override
  _GpaState createState() => _GpaState();
}

class _GpaState extends State<Gpa> {
  /////////////////////////////////
  // String valueChosen1;

  List valueChosen = List<String>()..length = 11;
  List valueChosen1 = List<String>()..length = 11;

  List listItem = ["0", "1", "2", "3", "4", "5", "6"];
  List listItem1 = ["O", "A+", "A", "B+", "B", 'C', 'F'];
  // String valueChosen11;
  Widget DrpBt1(int i) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .1),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              hint: Text(
                "0",
                textAlign: TextAlign.center,
              ),
              value: valueChosen1[i],
              onChanged: (newValue) {
                setState(() {
                  this.valueChosen1[i] = newValue;
                });
              },
              items: listItem1.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Center(child: Text(valueItem)),
                );
              }).toList()),
        ),
      ),
    );
  }

  Widget DrpBt(int i) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .1),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              hint: Center(
                child: Text(
                  "0",
                  textAlign: TextAlign.center,
                ),
              ),
              value: valueChosen[i],
              onChanged: (newValue) {
                setState(() {
                  this.valueChosen[i] = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Center(
                    child: Text(
                      valueItem,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }).toList()),
        ),
      ),
    );
  }

  var _output = 0.0;
  int _hash(String a) {
    if (a == "O")
      return 100;
    else if (a == "A+")
      return 90;
    else if (a == "A")
      return 80;
    else if (a == "B+")
      return 70;
    else if (a == "B")
      return 60;
    else if (a == "C")
      return 55;
    else if (a == "F")
      return 50;
    else
      return 0;
  }

  _Calculatin() {
    print("jo");
    int ci = 0;
    int ans = 0;
    for (int i = 0; i < 11; i += 1) {
      print(i);
      // print(valueChosen[i]);

      if (valueChosen[i] != null && valueChosen1[i] != null) {
        ci = ci + int.parse(valueChosen[i]);
        print(valueChosen[i].runtimeType);
        int temp = _hash(valueChosen1[i]);
        ans += (temp * int.parse(valueChosen[i]));
      }
    }
    _output = ans / (ci * 10);
    _output = double.parse((_output).toStringAsFixed(2));
    // _output = _output.toString() as double;
    print(_output);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        // bottomNavigationBar: Container(height: 60, child: Text("hiii")
        // decoration: ,
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text('GPA Calculator',
              style: TextStyle(
                color: Colors.black,
              )),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
                // alignment: ,
                decoration: BoxDecoration(color: Colors.blue[800]
                    // image: DecorationImage(
                    //     image: AssetImage('assets/images/calc2.jpeg'),
                    //     fit: BoxFit.fill)),
                    )),
            Column(children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 26,
                          spreadRadius: 10,
                          color: Colors.black12)
                    ],
                  ),
                  child: ClipRRect(
                    //clipper: can use this to get rounded corner
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "S.No",
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 2,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "credit",
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 2,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Grade",
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 2,
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20, spreadRadius: 18, color: Colors.black12)
                  ],
                ),
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width / 1.1,
                child: GridView.count(
                  childAspectRatio: (2.5),
                  crossAxisCount: 3,
                  children: [
                    ClipRRect(
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "1",
                                    textAlign: TextAlign.center,
                                  ),
                                )))),
                    Card(
                        color: Colors.white,
                        child: DrpBt(1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        )),

                    Card(
                        color: Colors.white,
                        child: DrpBt1(1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        )),

                    /**from here i will be repeating all the above widget yooo */
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(2)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(2)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(3)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(3)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "4",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(4)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(4)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "5",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(5)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(5)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "6",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(6)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(6)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "7",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(7)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(7)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "8",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(8)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(8)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "9",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(9)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(9)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            "10",
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt(10)),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: DrpBt1(10)),
                    // Card(
                    //     child: Text(
                    //   "11",
                    //   textAlign: TextAlign.center,
                    // )),
                    // Card(child: DrpBt()),
                    // Card(child: DrpBt1()),
                    // Card(
                    //     child: Text(
                    //   "9",
                    //   textAlign: TextAlign.center,
                    // )),
                    // Card(child: DrpBt()),
                    // Card(child: DrpBt1()),
                    /** till here yooo */
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              Container(
                  decoration: BoxDecoration(
                      // color: Colors.lightGreenAccent,
                      // border: Border.all(width: .1),
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 2,
                  // height: 50,
                  // decoration: Decoration()
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: MediaQuery.of(context).size.height / 13,
                        decoration: BoxDecoration(
                            // color: Colors.white9,
                            border: Border.all(width: .1),
                            borderRadius: BorderRadius.circular(25)),
                        child: RaisedButton(
                            hoverElevation: 0,
                            disabledElevation: 1,
                            focusElevation: 0,
                            highlightElevation: 0,
                            onLongPress: (() {
                              Future.delayed(const Duration(milliseconds: 600),
                                  () {
                                setState(() {
                                  valueChosen = List<String>()..length = 11;
                                  valueChosen1 = List<String>()..length = 11;
                                  // Here you can write your code for open new view
                                });
                              });
                            }),
                            splashColor: Colors.pink[200],
                            elevation: 0,
                            onPressed: (() {
                              print("hii");
                              setState(() {
                                _Calculatin();
                              });
                            }),
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "lets go",
                              textAlign: TextAlign.center,
                            )),
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Container(
                              height: 50,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 8),
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  border: Border.all(width: .1),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(_output.toString(),
                                  textAlign: TextAlign.center))),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Long Press for reset",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
          ],
        ));
  }
}
