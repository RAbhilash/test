import 'package:app/notes_1yr.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

class detail {
  String subject, asset, subtext;
  detail(this.subject, this.asset, this.subtext);
}

class booksyearthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<detail> data1 = [], data2 = [];
    data2.add(detail("DBMS", "assets/images/3.png",
        "https://drive.google.com/file/d/1o8hYb7HD_FY_7penY2H9WIvxAdAt9tGG/view?usp=sharing"));
    data2.add(detail("Compiler Design", "assets/images/1.png",
        "https://drive.google.com/file/d/10iItECrxtaFXTjhhOFakKsNF-oMZ3DzW/view?usp=sharing"));
    data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
        "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data2.add(detail(
        "Employability Skills And Practices",
        "assets/images/2.png",
        "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
        "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
        "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
        "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data1..add(detail("Chemistry", "assets/images/books.png", "subtext1"));
    data1.add(detail("PPs", "assets/images/books.png", "subtext1"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Third Year'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
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
        itemBuilder: (BuildContext context, int index) => item(
              context,
              index,
              data[index].subject,
              data[index].subtext,
              data[index].asset,
            ));
  }
}

_launchurl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Error!';
  }
}

_launchUrlApp(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
    );
  } else {
    throw 'Error!';
  }
}

Widget item(
    BuildContext context, int index, String subject, String url, String asset) {
  var size = MediaQuery.of(context).size;
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: tab(context, subject, url, wp, hp),
                  ),
                ),
                SizedBox(
                  width: wp(1),
                ),
                Container(
                  // width: 190,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.pink)),
                  height: hp(15),
                  width: wp(30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                    ),
                    child: Image(
                      fit: BoxFit.fitHeight,
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
        padding: const EdgeInsets.fromLTRB(8, 8, 32, 8),
        child: Container(
          height: hp(5),
          width: wp(74),
          child: Text(
            s,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: hp(4),
            ),
          ),
        ),
      ),
      SizedBox(
        height: hp(5),
        width: wp(30),
        child: Padding(
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
              _launchurl(url);
            },
          ),
        ),
      ),
    ],
  );
}
