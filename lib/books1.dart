import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detail {
  String subject, asset, subtext;
  detail(this.subject, this.asset, this.subtext);
}

class booksyearone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<detail> data1 = [], data2 = [];
    data1.add(detail("Physics", "assets/images/1.png",
        "https://drive.google.com/file/d/1FjR65oZmuzQ1tKVhAlBZ7h0zXzCXyiJn/view?usp=sharing"));
    data1.add(detail("Electrical", "assets/images/books.png",
        "https://drive.google.com/file/d/1kldGDGWa-oLFaUbm7KXQnvw5-YNpkxt-/view?usp=sharing"));
    data1.add(detail("English", "assets/images/books.png",
        "https://drive.google.com/file/d/1o8hYb7HD_FY_7penY2H9WIvxAdAt9tGG/view?usp=sharing"));
    data2.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
    data2.add(detail("Chemistry", "assets/images/books.png", "subtext1"));
    data2.add(detail("PPs", "assets/images/books.png", "subtext1"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white24,
          appBar: AppBar(
            title: Text('First Year'),
            backgroundColor: Colors.pink[100],
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
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
        itemBuilder: (BuildContext context, int index) => item(
            index,
            data[index].subject,
            data[index].asset,
            data[index].subtext,
            data,
            context));
  }
}

_launchUrl(String url) async {
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

Widget item(int index, String subject, String asset, String subtext,
    List<detail> data, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: FittedBox(
        child: Material(
            color: Colors.white,
            elevation: 05.0,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
            shadowColor: Color(0x802196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: tab(context, subject, subtext)),
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
  );
}

Widget tab(BuildContext context, String s, String url) {
  var size = MediaQuery.of(context).size;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
        child: Container(
          width: size.width / 3,
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
        child: ElevatedButton.icon(
          label: Text('View'),
          icon: Icon(Icons.insert_drive_file),
          onPressed: () {
            _launchUrlApp(url);
          },
        ),
      ),
    ],
  );
}
