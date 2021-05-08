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

class yearone extends StatefulWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearone() {
    data1.add(detail(
        "Calculus and Linear Algebra",
        "https://drive.google.com/uc?export=download&id=1zFDvQefGst9fsr4FuKqylfYFLPo5to7k",
        "https://drive.google.com/drive/folders/1nnquBzmA6l0YGO3OQDXowsq_xQolEu3X?usp=sharing"));
    data1.add(detail(
        "BEEE",
        "https://drive.google.com/uc?export=download&id=176_ML804bPmkbqtGvo9dPbJWqyl-qhdW",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data1.add(detail(
        "English",
        "https://drive.google.com/uc?export=download&id=1PLc0MlSAT-NQGapJnOxiCekb4dYboqL1",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data1.add(detail(
        "Semiconductor Physics",
        "https://drive.google.com/uc?export=download&id=1iYHiQT8E2Iwufpr4fQPexnMvfFklptWh",
        "https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter"));
    data2.add(detail(
        "French/German",
        "https://drive.google.com/uc?export=download&id=1oPXBYuh9QoWEh0X35Cne0Zhnm0tfvFL9",
        "https://drive.google.com/drive/folders/1bN36XrhWWENw3bbWxUtP2GBw2QQVSyJg?usp=sharing"));
    data2.add(detail(
        "General Aptitude",
        "https://drive.google.com/uc?export=download&id=1eurf4soQgAEKFe7qrpQtkuyHR0DaKMNn",
        "https://drive.google.com/drive/folders/1Wf9tB0xsyl5oOTIk8dMk5c_IrnCKJSbG?usp=sharing"));
    data2.add(detail(
        "Advanced Calculus and Complex Analysis",
        "https://drive.google.com/uc?export=download&id=1sPW4UK_8NC3NYT6R0N8-RBzGwM-YZMr0",
        "https://drive.google.com/drive/folders/1gxWNWx9AzHV2w6EyhhMFd4Pgx112-sw0?usp=sharing"));
    data2.add(detail(
        "Chemistry",
        "https://drive.google.com/uc?export=download&id=1MX16fbSkXag4j15b5nNUj-MKl9eBKFP7",
        "https://drive.google.com/drive/folders/1EX1hnnaQUb3K8EY5B3HU73Z337oiIwc0?usp=sharing"));
    data2.add(detail(
        "PPS",
        "https://drive.google.com/uc?export=download&id=1MX16fbSkXag4j15b5nNUj-MKl9eBKFP7",
        "https://drive.google.com/drive/folders/143wpq1wIJXlFgC4QieRPd99ObBoPoKYa?usp=sharing"));
    data2.add(detail(
        "Civil and Mechanical Engineering Workshop",
        "https://drive.google.com/uc?export=download&id=1P4HM54YMxh7Q3_pMdZhFjUZv9ENl0KdX",
        "https://drive.google.com/drive/folders/1dAcgSz7omfWkAaaU8ElFwxzEMBM8YpDl?usp=sharing"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
  }
  _yearoneState createState() => _yearoneState();
}

class _yearoneState extends State<yearone>
    with AutomaticKeepAliveClientMixin<yearone> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('First Year'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Sem 1'),
                Tab(text: 'Sem 2'),
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
  bool get wantKeepAlive => true;
}

Widget item(
    BuildContext context, int index, String subject, String url, String asset) {
  final wp = Screen(context).wp; //specify wp
  final hp = Screen(context).hp;
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
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
<<<<<<< HEAD
          height: hp(5),
          width: wp(75),
          child: Text(
=======
          height: hp(4),
          width: wp(60),
          child: TextOneLine(
>>>>>>> 2a95634745740013b5a4fd50dd9d1558c7f4ff47
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  MyFlutterApp.drive,
                  size: hp(2.5),
                ),
                Container(
                  width: wp(2),
                  height: hp(5),
                ),
                Text('View', style: TextStyle(fontSize: hp(2)))
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
