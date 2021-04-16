import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detail {
  String subject, asset, subtext;
  detail(this.subject, this.asset, this.subtext);
}

launchurl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class yearthree extends StatelessWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearthree() {
    data1.add(detail("Theory of Computation", "assets/images/automata.png",
        "https://drive.google.com/drive/folders/10n7qFW0SYVZng8ww-f2Rb-kFnA62QzU0?usp=sharing"));
    data1.add(detail("Electrical", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data1.add(detail("English", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data2.add(detail("Mechanical", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data2.add(detail("Chemistry", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data2.add(detail("PPS", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Third Year'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Sem 5',
                ),
                Tab(
                  text: 'Sem 6',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              _sem(data1),
              _sem(data2),
            ],
          )),
    );
  }

  ListView _sem(List<detail> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => item(context, index,
            data[index].subject, data[index].subtext, data[index].asset));
  }
}

Widget item(BuildContext context, int index, String subject, String subtext,
    String asset) {
  return GestureDetector(
    onTap: () {
      launchurl(subtext);
    },
    child: Padding(
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
                      child: tab(subject, 'subtext'),
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
                        image: AssetImage(asset),
                      ),
                    ),
                  ),
                ],
              )),
        ),
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
          width: 100,
          child: Text(
            s,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
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
