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
        "https://m.media-amazon.com/images/I/31ymIAQWgjL.jpg",
        "https://drive.google.com/drive/folders/1xsnTJfwc-1uMSN87AGT9tyj5GJU1P-t-?usp=sharing"));
    data1.add(detail("BEEE", "http://techbooksyard.com/doc-images/3635.png",
        "https://drive.google.com/drive/folders/1o0QvAoBebBCuFLMUJC8rZj17rvXWLH6U?usp=sharing"));
    data1.add(detail(
        "English",
        "https://images-na.ssl-images-amazon.com/images/I/81N6Go0iECL.jpg",
        "https://drive.google.com/drive/folders/1xsnTJfwc-1uMSN87AGT9tyj5GJU1P-t-?usp=sharing"));
    data1.add(detail(
        "Semiconductor Physics",
        "https://easyengineering.net/wp-content/uploads/2018/01/51ZRIOtS8JL.jpg",
        "https://drive.google.com/drive/folders/1uPhS5uXB9KcC2mYdmvDtb7ZGbdz5LR0B?usp=sharing"));
    data2.add(detail(
        "German",
        "https://images-na.ssl-images-amazon.com/images/I/41mSscTbjEL._SX331_BO1,204,203,200_.jpg",
        "https://drive.google.com/file/d/1QIPc6uLVBZDIsBLxeBXxkQeA7RMl2bBt/view?usp=sharing"));
    data2.add(detail(
        "French",
        "https://ia800900.us.archive.org/BookReader/BookReaderImages.php?zip=/16/items/afrenchgrammarb00breygoog/afrenchgrammarb00breygoog_tif.zip&file=afrenchgrammarb00breygoog_tif/afrenchgrammarb00breygoog_0008.tif&id=afrenchgrammarb00breygoog&scale=8&rotate=0",
        "https://drive.google.com/file/d/1eKqSwGksILWFL-2RoYFyGNsIutvdrDjw/view?usp=sharing"));
    data2.add(detail(
        "General Aptitude",
        "https://1.bp.blogspot.com/-WXZQfSe4lLw/XTg0rDQMRWI/AAAAAAAACcA/nunjcYkdTDwd2PURITT-LT-3lAEd75rogCLcBGAs/s1600/quantitative%2Baptitude%2B%25281%2529.png",
        "https://drive.google.com/drive/folders/1Wf9tB0xsyl5oOTIk8dMk5c_IrnCKJSbG?usp=sharing"));
    data2.add(detail(
        "Advanced Calculus and Complex Analysis",
        "https://images-eu.ssl-images-amazon.com/images/I/41JxHeBcBJL._SX342_SY445_QL70_ML2_.jpg",
        "https://drive.google.com/drive/folders/1gxWNWx9AzHV2w6EyhhMFd4Pgx112-sw0?usp=sharing"));
    data2.add(detail(
        "Chemistry",
        "https://chemistry.com.pk/wp-content/uploads/2014/08/Essential-Chemistry.jpg",
        "https://drive.google.com/drive/folders/1EX1hnnaQUb3K8EY5B3HU73Z337oiIwc0?usp=sharing"));
    data2.add(detail(
        "PPS",
        "https://images-na.ssl-images-amazon.com/images/I/61Aa6VMDBhL.jpg",
        "https://drive.google.com/drive/folders/143wpq1wIJXlFgC4QieRPd99ObBoPoKYa?usp=sharing"));
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
                    ),
                  ),
                ),
                Container(
                  height: hp(17),
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
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8),
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
            child: Row(
              children: <Widget>[
                Icon(
                  MyFlutterApp.drive,
                  size: hp(2.5),
                ),
                Container(
                  width: wp(2),
                  height: hp(4),
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
