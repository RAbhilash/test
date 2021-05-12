import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/fontlib/my_flutter_app_icons.dart';
// import 'package:auto_size_text/auto_size_text.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class detail {
  String subject, asset, subtext;
  detail(this.subject, this.asset, this.subtext);
}

class booksyearone extends StatefulWidget {
  @override
  _booksyearoneState createState() => _booksyearoneState();
}

class _booksyearoneState extends State<booksyearone>
    with SingleTickerProviderStateMixin {
  AnimationController _animationC;
  Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    _animationC =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationC.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 15.0).animate(_animationC)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    List<detail> data1 = [], data2 = [];
    data2.add(detail(
        "Advanced Calculas",
        "https://images-eu.ssl-images-amazon.com/images/I/41JxHeBcBJL._SX342_SY445_QL70_ML2_.jpg",
        "https://drive.google.com/file/d/15TY56fVWZXyk3vYzcJNV_MWyr5EwOJq4/view?usp=sharing"));
    data2.add(detail(
        "Aptitude",
        "https://1.bp.blogspot.com/-WXZQfSe4lLw/XTg0rDQMRWI/AAAAAAAACcA/nunjcYkdTDwd2PURITT-LT-3lAEd75rogCLcBGAs/s1600/quantitative%2Baptitude%2B%25281%2529.png",
        "https://drive.google.com/file/d/1ksEwvC8ejdveVN5ZVnmX2T2yiFyjMhAf/view?usp=sharing"));
    data2.add(detail(
        "Programming For Problem Solving",
        "https://images-na.ssl-images-amazon.com/images/I/61Aa6VMDBhL.jpg",
        "https://drive.google.com/file/d/1i11c3jcwIWP_xqeaMjXOY00LIX_9ZhWk/view?usp=sharing"));
    data2.add(detail(
        "German",
        "https://images-na.ssl-images-amazon.com/images/I/41mSscTbjEL._SX331_BO1,204,203,200_.jpg",
        "https://drive.google.com/file/d/1QIPc6uLVBZDIsBLxeBXxkQeA7RMl2bBt/view?usp=sharing"));
    data2.add(detail(
        "French",
        "https://ia800900.us.archive.org/BookReader/BookReaderImages.php?zip=/16/items/afrenchgrammarb00breygoog/afrenchgrammarb00breygoog_tif.zip&file=afrenchgrammarb00breygoog_tif/afrenchgrammarb00breygoog_0008.tif&id=afrenchgrammarb00breygoog&scale=8&rotate=0",
        "https://drive.google.com/file/d/1eKqSwGksILWFL-2RoYFyGNsIutvdrDjw/view?usp=sharing"));
    data2.add(detail(
        "Chemistry",
        "https://chemistry.com.pk/wp-content/uploads/2014/08/Essential-Chemistry.jpg",
        "https://drive.google.com/file/d/1-I9cgfdx7ypFNmUbKzomtuNkjPRnU7OE/view?usp=sharing"));
    // data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
    // "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
    data1.add(detail(
        "Basic Electrical",
        "assets/images/3635.png",
        "https://drive.google.com/file/d/1L0hOTTRr5w0C1-898tY2nsDhLd-Twfg5/view?usp=sharing"));
    data1.add(detail(
        "Engineering Graphics",
        "https://engineeringbookspdf.com/doc-images/7381.png",
        "https://drive.google.com/file/d/1SRiJ9Job6JI3TQKvQam_f0mIDSCZomkd/view?usp=sharing"));
    data1.add(detail(
        "English",
        "https://images-na.ssl-images-amazon.com/images/I/81N6Go0iECL.jpg",
        "https://drive.google.com/file/d/1SZB6QnVsQnntprjIS3CuYrM_pdkRIqcR/view?usp=sharing"));
    data1.add(detail(
        "Linear Algebra",
        "https://m.media-amazon.com/images/I/31ymIAQWgjL.jpg",
        "https://drive.google.com/file/d/1k087YPgunT78SxXmRUu4Sx3h43drEG6B/view?usp=sharing"));
    data1.add(detail(
        "SemiConductor Physics",
        "https://easyengineering.net/wp-content/uploads/2018/01/51ZRIOtS8JL.jpg",
        "https://drive.google.com/file/d/1b4SHi-2Che5HxsLv5anpZ6040JhdeBy8/view?usp=sharing"));

    // data1.add(detail("PPs", "assets/images/books.png", "subtext1"));
    Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
    data1.sort(comp);
    data2.sort(comp);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('First Year',
                style: TextStyle(
                  fontSize: hp(5),
                )),
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade300,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Sem 1',
                    style: TextStyle(fontSize: hp(2)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sem 2',
                    style: TextStyle(fontSize: hp(2)),
                  ),
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
// class detail {
//   String subject, asset, subtext;
//   detail(this.subject, this.asset, this.subtext);
// }

// class booksyearone extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//   var size = MediaQuery.of(context).size;
//   final wp = Screen(context).wp; //specify wp
//   final hp = Screen(context).hp;
//     List<detail> data1 = [], data2 = [];
//     data2.add(detail("DBMS", "assets/images/3.png",
//         "https://drive.google.com/file/d/1o8hYb7HD_FY_7penY2H9WIvxAdAt9tGG/view?usp=sharing"));
//     data2.add(detail("Compiler Design", "assets/images/1.png",
//         "https://drive.google.com/file/d/10iItECrxtaFXTjhhOFakKsNF-oMZ3DzW/view?usp=sharing"));
//     data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
//         "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
//     data2.add(detail(
//         "Employability Skills And Practices",
//         "assets/images/2.png",
//         "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
//     data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
//         "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
//     data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
//         "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
//     data2.add(detail("Fibre Optics And Opto-Electronics", "assets/images/2.png",
//         "https://drive.google.com/file/d/1aNOKMt4uJgwzU6f3FHpGH1oiI-bupnOI/view?usp=sharing"));
//     data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
//     data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
//     data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
//     data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
//     data1.add(detail("Mechanical", "assets/images/books.png", "subtext1"));
//     data1..add(detail("Chemistry", "assets/images/books.png", "subtext1"));
//     data1.add(detail("PPs", "assets/images/books.png", "subtext1"));
//     Comparator<detail> comp = (a, b) => a.subject.compareTo(b.subject);
//     data1.sort(comp);
//     data2.sort(comp);
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.purple,
//             title: Text('Third Year',style: TextStyle(
//               fontSize: hp(5),
//             )),
//             bottom: TabBar(
//               indicatorColor: Colors.white,
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.grey.shade300,
//               tabs: <Widget>[
//                 Tab(
//                      child:Text(
//                       'Sem 5',style: TextStyle(
//                         fontSize:hp(2)
//                       ),
//                     ),
//                   ),
//                 Tab(
//                     child:Text(
//                       'Sem 6',style: TextStyle(
//                         fontSize:hp(2)
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: <Widget>[
//               _sem(data1),
//               _sem(data2),
//             ],
//           )),
//     );
//   }

//   ListView _sem(List<detail> data) {
//     return ListView.builder(
//         itemCount: data.length,
//         itemBuilder: (BuildContext context, int index) => item(
//               context,
//               index,
//               data[index].subject,
//               data[index].subtext,
//               data[index].asset,
//             ));
//   }
// }

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

  Widget item(BuildContext context, int index, String subject, String url,
      String asset) {
    if (asset.contains('http')) {
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
                // shadowColor: Color(0x802196F3),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      height: hp(20),
                      width: wp(30),
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
    } else {
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      height: hp(20),
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
  }

  Widget tab(BuildContext context, String s, String url, var wp, var hp) {
  var size = MediaQuery.of(context).size;
  return Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(5,2,5,5),
      child: Container(
    height: hp(5),
    width: wp(74),
    child: Align(
      alignment: Alignment.topLeft,
                    child: Text(
    s,
    softWrap: true,
    overflow: TextOverflow.fade,
    maxLines: 1,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontSize: hp(3),
      fontWeight: FontWeight.bold,
    ),
      ),
    ),
      ),
    ),
    Container(
    
    height: hp(5),
    width: wp(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      // color:Color.fromARGB(255, 27, 28, 30),
      boxShadow: [BoxShadow(
        color:Color.fromARGB(130, 237, 125, 50),
        blurRadius: _animation.value,
        spreadRadius: _animation.value,
      )]
    ),
    child: Padding(
      padding: EdgeInsets.only(left:0),
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
}
