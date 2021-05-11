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

class yeartwo extends StatefulWidget {
  @override
  List<detail> data1 = [], data2 = [];
  yeartwo() {
    data1.add(detail(
        "Analog and Digital Electronics",
        "https://easyengineering.net/wp-content/uploads/2018/03/analog-and-digital-electronics-by-u-a-bakshi-1-638.jpg",
        "https://drive.google.com/drive/folders/14nQXGpf_8Qkv2PefmaM5JiN9pH0WPEEC?usp=sharing"));
    data1.add(detail(
        "Biology",
        "https://thumbs.dreamstime.com/z/cover-school-notebook-biology-textbook-pattern-black-white-chalk-style-hand-drawn-icon-dna-flower-blank-187836741.jpg",
        "https://drive.google.com/drive/folders/1Fcixj_aAZt_Wwwnbuv-kL0EMnhPFrLTL?usp=sharing"));
    data1.add(detail(
        "Computer Organization and Architecure",
        "assets/images/Coa.jpg",
        "https://drive.google.com/drive/folders/1TKIFt3IjdODVt0QsMicM22alVC7wF18J?usp=sharing"));
    data1.add(detail("Data Structure Using Python", "assets/images/ds.jpg",
        "https://drive.google.com/file/d/1dy0Ulogl8JPCOXweaNPBDhd1rkC9exoS/view?usp=sharing"));
    data1.add(detail(
        "OOPS",
        "https://images-na.ssl-images-amazon.com/images/I/51HX2eyisQL._SX406_BO1,204,203,200_.jpg",
        "https://drive.google.com/drive/folders/1xTr0Qdo3PRWhbAzg3ZcMOppzCZwIC1WM?usp=sharing"));
    data1.add(detail(
        "Transform and Boundary Value Problems",
        "https://images.routledge.com/common/jackets/crclarge/978158488/9781584883142.jpg",
        "https://drive.google.com/file/d/1O1z-lHVq3vimLT27WvMypfmHJ0DkIs05/view?usp=sharing"));
    data1.add(detail(
        "Data Structures and Algorithm",
        "https://images.routledge.com/common/jackets/crclarge/978158488/9781584883142.jpg",
        "https://drive.google.com/drive/folders/17N3k7lNlcPe5bLyb6shLnuXQ2pddCKQX?usp=sharing"));
    data1.add(detail(
        "Management",
        "https://images.routledge.com/common/jackets/crclarge/978158488/9781584883142.jpg",
        "https://drive.google.com/drive/folders/1oyh_O94EryrMy5fOhYmLjZcv57Vau0Dq?usp=sharing"));
    data2.add(detail(
        "DAA",
        "https://images-na.ssl-images-amazon.com/images/I/41VndKVtiXL._SX258_BO1,204,203,200_.jpg",
        "https://drive.google.com/drive/folders/15jypqDOrxBpVVSktD73eFy7Wm2TdBXGN?usp=sharing"));
    data2.add(detail(
        "Computer Communication",
        "https://images-na.ssl-images-amazon.com/images/I/51H6T7XFYML._SX376_BO1,204,203,200_.jpg",
        "https://drive.google.com/drive/folders/1uPhS5uXB9KcC2mYdmvDtb7ZGbdz5LR0B?usp=sharing"));
    data2.add(detail(
        "Operating System",
        "https://i2.wp.com/edutechlearners.com/wp-content/uploads/2016/03/Operating-System-Concepts-b.jpg?resize=205%2C290&ssl=1",
        "https://drive.google.com/drive/folders/1XEgyy4nuW9LkW9n0uYb0Z86g__7IJGsx?usp=sharing"));
    data2.add(detail(
        "Software Project Management System",
        "https://images-na.ssl-images-amazon.com/images/I/41ycgJnZ73L.jpg",
        "https://drive.google.com/drive/folders/1kyy_hVBVzLPvvmaGKPBSHaSmua1VeKGj?usp=sharing"));
    data2.add(detail(
        "Probabilty Statistics",
        "https://www.mheducation.co.in/media/catalog/product/cache/84c63a40cf0771f03c9446b22a7e0f08/9/7/9780070669253_21.jpeg",
        "https://drive.google.com/drive/folders/1-QIRNgJyLfH-Va2xtuPAfu8DozRpWcbb?usp=sharing"));
    data2.add(detail(
        "APP",
        "https://www.mheducation.co.in/media/catalog/product/cache/84c63a40cf0771f03c9446b22a7e0f08/9/7/9780070669253_21.jpeg",
        "https://drive.google.com/drive/folders/1bE_Xx7iNuWFVQ68uVYmeTnaKkAMOkjcZ?usp=sharing"));
    data2.add(detail(
        "Social Engineering",
        "https://www.mheducation.co.in/media/catalog/product/cache/84c63a40cf0771f03c9446b22a7e0f08/9/7/9780070669253_21.jpeg",
        "https://drive.google.com/drive/folders/1_pqcsA6EchI2G3WW0lOKV3sfzJv32qff?usp=sharing"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
  }
  _yeartwoState createState() => _yeartwoState();
}

class _yeartwoState extends State<yeartwo>
    with AutomaticKeepAliveClientMixin<yeartwo> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Second Year'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Sem 3'),
                Tab(text: 'Sem 4'),
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
