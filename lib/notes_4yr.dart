import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detail {
  String subject, asset, url;
  detail(this.subject, this.asset, this.url);
}

launchurl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Error launching url';
  }
}

class yearfour extends StatelessWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearfour() {
    data1.add(detail("Mechanical", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1nnquBzmA6l0YGO3OQDXowsq_xQolEu3X?usp=sharing"));
    data1.add(detail("Electrical", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data1.add(detail("English", "assets/images/thumbnail.jpg",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data2.add(detail("AI", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1bN36XrhWWENw3bbWxUtP2GBw2QQVSyJg?usp=sharing"));
    data2.add(detail("Aptitude", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1Wf9tB0xsyl5oOTIk8dMk5c_IrnCKJSbG?usp=sharing"));
    data2.add(detail("DBMS", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1gxWNWx9AzHV2w6EyhhMFd4Pgx112-sw0?usp=sharing"));
    data2.add(detail(
        "Fiber Optics and Optoelectronics",
        "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1EX1hnnaQUb3K8EY5B3HU73Z337oiIwc0?usp=sharing"));
    data2.add(detail(
        "Network Routing Algorithms",
        "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/143wpq1wIJXlFgC4QieRPd99ObBoPoKYa?usp=sharing"));
    data2.add(detail("Network Security", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/1dAcgSz7omfWkAaaU8ElFwxzEMBM8YpDl?usp=sharing"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent[400],
            title: Text('Fourth Year'),
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
          body: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: TabBarView(
              children: <Widget>[
                _sem(data1),
                _sem(data2),
              ],
            ),
          )),
    );
  }

  ListView _sem(List<detail> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => item(context, index,
            data[index].subject, data[index].url, data[index].asset));
  }
}

Widget item(
    BuildContext context, int index, String subject, String url, String asset) {
  var size = MediaQuery.of(context).size;
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
                    child: tab(context, subject, url),
                  ),
                ),
                Container(
                  // width: 190,
                  decoration: BoxDecoration(border: Border.all(
                    color:Colors.pink
                  )),
                  height: (size.width / 1920) * 500,
                  width: (size.width / 1080) * 190,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                    ),
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
  );
}

Widget tab(BuildContext context, String s, String url) {
  var size = MediaQuery.of(context).size;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width / 2.8,
          child: Text(
            s,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(primary: Colors.orange[600]),
          label: Text(
            'View',
          ),
          icon: Icon(
            MyFlutterApp.drive,
            size: 15,
          ),
          onPressed: () {
            launchurl(url);
          },
        ),
      ),
    ],
  );
}
