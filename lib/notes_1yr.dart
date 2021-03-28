import 'package:flutter/material.dart';

class detail {
  final String name, asset, subtext;
  detail(this.name, this.asset, this.subtext);
}

class yearone extends StatelessWidget {
  List<String> subject1 = ["Physics", "Electrical", "English"],
      subject2 = ["Mechanical", "Chemisty", "PPS"];
  List<String> subtext1 = ["subtext1", "subtext2", "subtext3"],
      subtext2 = ["subtext1", "subtext2", "subtext3"];
  List<String> asset1 = [""], asset2 = [""];
  yearone() {
    subject1.sort();
    subject2.sort();
    subtext1.sort();
    subtext2.sort();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('First Year'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Sem 1',
                ),
                Tab(
                  text: 'Sem 2',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              _sem(subject1, subtext1),
              _sem(subject2, subtext2),
            ],
          )),
    );
  }

  ListView _sem(List<String> subject, List<String> subtext) {
    return ListView.builder(
        itemCount: subject.length,
        itemBuilder: (BuildContext context, int index) =>
            item(index, subject, subtext));
  }
}

Widget item(int index, List<String> subject, List<String> subtext) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      child: FittedBox(
        child: Material(
            color: Colors.white,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: tab(subject[index], subtext[index]),
                  ),
                ),
                Container(
                  width: 190,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image(
                      fit: BoxFit.contain,
                      alignment: Alignment.topRight,
                      image: AssetImage("assets/images/thumbnail.jpg"),
                    ),
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}

Widget tab(String s, String subtext) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
        child: Container(
          child: Text(s),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: Container(
          child: Text(subtext),
        ),
      ),
    ],
  );
}
