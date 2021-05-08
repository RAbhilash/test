import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class detail {
  String subject, asset, url;
  detail(this.subject, this.asset, this.url);
}

launchurl(url) async {
  if (await canLaunch(url))
    await launch(url);
  else
    throw 'Error launching url';
}

class yearthree extends StatefulWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearthree() {
    data1.add(detail("Automata", "assets/images/thumbnail.jpg",
        "https://drive.google.com/drive/folders/10n7qFW0SYVZng8ww-f2Rb-kFnA62QzU0?usp=sharing"));
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
  _yearthreeState createState() => _yearthreeState();
}

class _yearthreeState extends State<yearthree>
    with AutomaticKeepAliveClientMixin<yearthree> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Third Year'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Sem 5'),
                Tab(text: 'Sem 6'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              sem("key1", widget.data1),
              sem("key2", widget.data2),
            ],
          )),
    );
  }

  ListView sem(String key, List<detail> data) {
    return ListView.builder(
        shrinkWrap: true,
        key: PageStorageKey(key),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => item(context, index,
            data[index].subject, data[index].url, data[index].asset));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
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
            elevation: 7.0,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
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
                  height: hp(13.5),
                  width: wp(22),
                  child: CachedNetworkImage(
                    placeholder: (context, asset) =>
                        Image.asset('assets/images/loading.gif'),
                    fit: BoxFit.fill,
                    alignment: Alignment.centerRight,
                    imageUrl: asset,
                    fadeInDuration: Duration(milliseconds: 500),
                    placeholderFadeInDuration: Duration(milliseconds: 1000),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}

Widget tab(BuildContext context, String s, String url, var wp, var hp) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 10, 8),
        child: Container(
          height: hp(4),
          width: wp(60),
          child: TextOneLine(
            s,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: hp(2.2),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  MyFlutterApp.drive,
                  size: hp(2.5),
                ),
                Container(
                  width: wp(2),
                  height: hp(5),
                ),
                Text('View', style: TextStyle(fontSize: hp(2.5)))
              ],
            ),
            onPressed: () {
              launchurl(url);
            },
          ),
        ),
      ),
    ],
  );
}
