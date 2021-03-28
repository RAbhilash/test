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
        child: GridView.count(
          shrinkWrap: true,
          padding: EdgeInsets.fromLTRB(20, 20, 15, 15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          primary: false,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yearone()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
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
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yeartwo()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.blue))),
                child: Card(
                  elevation: 2,
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
                            style: TextStyle(fontFamily: "Montserrat Regular"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yearthree()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.blue))),
                child: Card(
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Image(
                            image: AssetImage('assets/images/yearthree.png')),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'THIRD YEAR',
                            style: TextStyle(fontFamily: "Montserrat Regular"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yearfour()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.blue))),
                child: Card(
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 5,
                          child: Image(
                              image: AssetImage('assets/images/yearfour.png'))),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Fourth Year',
                            style: TextStyle(fontFamily: "Montserrat Regular"),
                          ),
                        ),
                      ),
                    ],
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

/*class _notesState extends State<notes> {
  @override
  List _data = [
    {'key': 'Sem 1', 'group': '1st year'},
    {'key': 'Sem 2', 'group': '1st year'},
    {'key': 'Sem 3', 'group': '2nd year'},
    {'key': 'Sem 4', 'group': '2nd year'},
    {'key': 'Sem 5', 'group': '3rd year'},
    {'key': 'Sem 6', 'group': '3rd year'},
    {'key': 'Sem 7', 'group': '4th year'},
    {'key': 'Sem 8', 'group': '4th year'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Course Notes'),
        ),
        body: GroupedListView<dynamic, String>(
          padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
          elements: _data,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value1.compareTo(value2),
          itemComparator: (item1, item2) =>
              item1['key'].compareTo(item2['key']),
          order: GroupedListOrder.ASC,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  background: Paint()
                    ..strokeWidth = 25.0
                    ..color = Colors.lightBlue
                    ..style = PaintingStyle.stroke
                    ..strokeJoin = StrokeJoin.round,
                  fontWeight: FontWeight.bold),
            ),
          ),
          itemBuilder: (c, element) {
            return new GestureDetector(
                onTap: () {},
                child: new Card(
                  //elevation: 5.0,
                  margin:
                      new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 2, color: Colors.blue),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      //leading: Icon(Icons.account_circle),
                      title: Text(
                        element['key'],
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ));
          },
        )
        );
  }
}*/
