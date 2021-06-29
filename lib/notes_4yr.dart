import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';

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

class yearfour extends StatefulWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yearfour() {
    data1.add(detail("IOT", "assets/images/iot.jpg",
        "https://drive.google.com/file/d/15IHz2ymShvUle2so2ZG_8Z3_0KUqz_dM/view?usp=sharing"));
    data1.add(detail(
        "Web Programming",
        "https://images-na.ssl-images-amazon.com/images/I/51uPb7Ca1PL._SX258_BO1,204,203,200_.jpg",
        "https://drive.google.com/file/d/14RybgVY-iHZA5g3ePcrEJYSCtbHC3ETT/view?usp=sharing"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
  }
  _yearfourState createState() => _yearfourState();
}

class _yearfourState extends State<yearfour>
    with AutomaticKeepAliveClientMixin<yearfour> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Fourth Year',
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Sem 7'),
                Tab(text: 'Sem 8'),
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
  var size = MediaQuery.of(context).size;
  var diag = sqrt(size.height * size.height + size.width * size.width);
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
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
                    padding: const EdgeInsets.only(left: 10.0),
                    child: tab(
                      context,
                      subject,
                      url,
                      wp,
                      hp,
                      diag,
                    ),
                  ),
                ),
                Container(
                  height: hp(15),
                  width: wp(22),
                  child: checkurl(asset),
                ),
              ],
            )),
      ),
    ),
  );
}

Widget checkurl(String asset) {
  if (asset.contains('http'))
    return CachedNetworkImage(
      placeholder: (context, asset) => Image.asset('assets/images/loading.gif'),
      fit: BoxFit.fill,
      alignment: Alignment.centerRight,
      imageUrl: asset,
      fadeInDuration: Duration(milliseconds: 500),
      placeholderFadeInDuration: Duration(milliseconds: 1000),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  else {
    return Image(
      fit: BoxFit.fill,
      alignment: Alignment.topRight,
      image: AssetImage(asset),
    );
  }
}

Widget tab(
    BuildContext context, String s, String url, var wp, var hp, var diag) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            height: hp(3),
            width: wp(60),
            child: TextOneLine(
              s,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: diag * .02,
              ),
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
              primary: Colors.orange,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  MyFlutterApp.drive,
                  size: diag * .02,
                ),
                Container(
                  width: 7,
                  height: hp(4),
                ),
                Text('View', style: TextStyle(fontSize: diag * .02))
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
