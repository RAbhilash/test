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
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                 ClipPath(
                   clipper:ShapeBorderClipper(shape:RoundedRectangleBorder(
                     borderRadius:BorderRadius.all(Radius.circular(10))
                    )),
                                    child: Container(
                      height:200,
                      width:250,
                      decoration: BoxDecoration(
                        color:Colors.yellow,
                        
                        image:DecorationImage(image: AssetImage('assets/images/notes2.jpg'),fit:BoxFit.fill),
                      ),
                    ),
                 ),
                // Expanded(
                //   child: Container(
                //     height:300,
                //     width:300,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       image: DecorationImage(
                        
                //         image: AssetImage('assets/images/test.gif'),
                //       ),
                //       //                 child: Image(
                //       //   image: AssetImage('assets/images/test.gif'),
                //       // ),
                //     ),
                //   ),
                // ),
            
                Expanded(
                    flex: 2,
                    child: GridView.count(
                      crossAxisCount: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 2
                          : 4,
                      //physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.all(20),
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        Theme(
                          data: ThemeData(splashColor: Colors.orange),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => yearone()));
                            },
                            
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                                child: Container(
                                    decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width:10,
                                        color:Colors.green,
                                      )
                                    )
                                    ),
                                    child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: SizedBox(
                                            width: 100,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/yearone.png')),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              'FIRST YEAR',
                                              style: TextStyle(
                                                fontFamily:
                                                    "Montserrat Regular",
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
                          data: ThemeData(splashColor: Colors.yellow),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => yeartwo()));
                            },
                            
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                                child: Container(
                                    decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width:10,
                                        color:Colors.red,
                                      )
                                    )
                                    ),
                                    child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: SizedBox(
                                            width: 100,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/yeartwo.png')),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              'SECOND YEAR',
                                              style: TextStyle(
                                                fontFamily:
                                                    "Montserrat Regular",
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
                          data: ThemeData(splashColor: Colors.blue),
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => yearthree()));
                            },
                            
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                                child: Container(
                                    decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width:10,
                                        color:Colors.yellow,
                                      )
                                    )
                                    ),
                                    child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: SizedBox(
                                            width: 100,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/yearthree.png')),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              'THIRD YEAR',
                                              style: TextStyle(
                                                fontFamily:
                                                    "Montserrat Regular",
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
                                      builder: (context) => yearfour()));
                            },
                            
                              child: ClipPath(
                                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                                child: Container(
                                    decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width:10,
                                        color:Colors.white,
                                      )
                                    )
                                    ),
                                    child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: SizedBox(
                                            width: 100,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/yearfour.png')),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              'Fourth YEAR',
                                              style: TextStyle(
                                                fontFamily:
                                                    "Montserrat Regular",
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
          ],
        ),
      ),
    );
  }
}
