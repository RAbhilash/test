import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

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

class yearone extends StatelessWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearone() {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('First Year'),
            bottom: TabBar(
              indicatorColor: Colors.white,
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
            data[index].subject, data[index].url, data[index].asset));
  }
}

Widget item(
    BuildContext context, int index, String subject, String url, String asset) {
  final wp = Screen(context).wp; //specify wp
  final hp = Screen(context).hp;
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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: tab(
                      context,
                      subject,
                      url,
                      wp,
                      hp,
                    ),
                  ),
                ),
                Container(
                  width: wp(25),
                  height: hp(21),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    child: Image(
                      fit: BoxFit.fill,
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

Widget tab(BuildContext context, String s, String url, var wp, var hp) {
  var size = MediaQuery.of(context).size;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 10, 10),
        child: Container(
          height: hp(5),
          width: wp(75),
          child: Text(
            s,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: hp(5),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: SizedBox(
          height: hp(5),
          width: wp(20),
          child: ElevatedButton.icon(
            label: Text('View'),
            icon: Icon(MyFlutterApp.drive, size: 15),
            onPressed: () {
              launchurl(url);
            },
          ),
        ),
      ),
    ],
  );
}
