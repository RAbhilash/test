import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detail {
  String subject, url, subtext, domain;
  IconData asset;
  detail(this.subject, this.domain, this.asset, this.url, this.subtext);
}

launchurl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Error launching url';
  }
}

class placement extends StatelessWidget {
  @override
  List<detail> data1 = [];
  placement() {
    data1.add(detail(
        "DBMS",
        'Whimsical',
        MyFlutterApp.whimsical,
        "https://whimsical.com/dbms-roadmap-by-love-babbar-FmUi8ffVop33t3MmpVxPCo",
        "DBMS RoadMap - Love Babbar"));
    data1.add(detail(
        "Final year roadmap",
        "Youtube",
        MyFlutterApp.youtube,
        "https://www.youtube.com/watch?v=VY6003vijLw",
        "[4th year] Roadmap to Dream Placement - Love Babbar"));
    data1.add(detail(
        "Web Development",
        "Youtube",
        MyFlutterApp.youtube,
        "https://www.youtube.com/watch?v=GLk7-imcjiI",
        "Complete Roadmap for Web Development - Love Babbar"));
    data1.add(detail(
        "OOPS",
        "Whimsical",
        MyFlutterApp.whimsical,
        "https://whimsical.com/object-oriented-programming-cheatsheet-by-love-babbar-YbSgLatbWQ4R5paV7EgqFw",
        "Object Oriented Programming CheatSheet - by Love Babbar"));
    data1.add(detail(
        "2nd year",
        "Youtube",
        MyFlutterApp.youtube,
        "https://www.youtube.com/watch?v=CF1j_wMEbPA",
        "Roadmap to Off-campus Internship in 2nd Year - Apna College"));
    data1.add(detail(
        "How to get into Product Based Companies",
        "Youtube",
        MyFlutterApp.youtube,
        "https://www.youtube.com/watch?v=PihtA9D-IlE",
        "Studying for College Placements - Aman Dhatarwal"));
    data1.add(detail(
        "DSA questions",
        "Drive",
        MyFlutterApp.drive,
        "https://drive.google.com/file/d/1FMdN_OCfOI0iAeDlqswCiC2DZzD4nPsb/view",
        "Curated DSA question bank with up to 450 problems"));
    data1.add(detail(
        "Software Development sheet",
        "Google Docs",
        MyFlutterApp.docs,
        "https://docs.google.com/document/d/1SM92efk8oDl8nyVw8NHPnbGexTS9W-1gmTEYfEurLWQ/edit",
        "SDE sheet - Striver"));
    data1.add(detail(
        "Placement Materials",
        "Drive",
        MyFlutterApp.drive,
        "https://drive.google.com/drive/folders/1oLvYU3uj23fumRNF9IL8yIE4vYIVvvSz",
        "Additional Placement Material"));
    data1.add(detail(
        "GATE preparation",
        "Drive",
        MyFlutterApp.drive,
        "https://drive.google.com/drive/folders/1MCarInnak1qlFK2i3p6PnfjRH0p_zArf",
        "Complete preparation material for GATE"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverAppBar(
                  iconTheme: IconThemeData(
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: Colors.white,
                  expandedHeight: 250.0,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Placement Material",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      background: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Image.asset(
                            "assets/images/fang.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )),
                ),
              ),
            ];
          },
          // appBar: AppBar(
          //   backgroundColor: Colors.lightBlue[400],
          //   iconTheme: IconThemeData(
          //     color: Colors.black,
          //   ),
          //   title: Text('Placement Resources',
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontStyle: FontStyle.italic,
          //         fontFamily: 'Pacifo',
          //       )),
          //   centerTitle: true,
          // ),
          body: _sem(data1),
        ),
      ),
    );
  }

  ListView _sem(List<detail> data) {
    return ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => item(
            context,
            index,
            data[index].subject,
            data[index].url,
            data[index].asset,
            data[index].subtext,
            data[index].domain));
  }
}

Widget item(BuildContext context, int index, String subject, String url,
    IconData asset, String subtext, String domain) {
  var col;
  return Card(
    margin: EdgeInsets.all(16),
    elevation: 10,
    child: InkWell(
      onTap: () {
        launchurl(url);
      },
      child: InkWell(
        splashColor: Colors.black,
        child: Container(
          child: ListTile(
            subtitle: Text(subtext),
            contentPadding:
                EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(domain,
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic)),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            leading: Icon(asset),
            title: Text(subject),
          ),
        ),
      ),
    ),
  );
}
