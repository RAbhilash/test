import 'package:app/fontlib/my_flutter_app_icons.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'dart:ui';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cached_network_image/cached_network_image.dart';

class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/aboutBg.png"),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.white24,
                ),
              )),
          Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                          height: hp(28),
                          width: wp(28),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/aditya.jpg")),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1.0, 3.0),
                                    blurRadius: 20)
                              ],
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: Colors.white)),
                      Text("Aditya.P.S",
                          style: TextStyle(
                              fontFamily: 'MyFlutterApp1',
                              fontSize: hp(3),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: hp(28),
                          width: wp(28),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/akash2.jpg")),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1.0, 3.0),
                                    blurRadius: 20)
                              ],
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              color: Colors.white)),
                      Text("Akash Joy",
                          style: TextStyle(
                              fontFamily: 'MyFlutterApp1',
                              fontSize: hp(3),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      FutureBuilder<dynamic>(
                        future: FirebaseStorage.instance
                            .ref()
                            .child('abhilash.jpg')
                            .getDownloadURL(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Container(
                              height: hp(28),
                              width: wp(28),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          snapshot.data.toString())),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1.0, 3.0),
                                        blurRadius: 20)
                                  ],
                                  border: Border.all(color: Colors.black),
                                  shape: BoxShape.circle,
                                  color: Colors.black),
                            );
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          }
                          return Container();
                        },
                      ),
                      Text("R.Abhilash",
                          style: TextStyle(
                              fontFamily: 'MyFlutterApp1',
                              fontSize: hp(3),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: hp(7),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Text(
                "Hello Users,\nWe the developer of this app are happy to create something useful for our college , making important resources for placements and college notes, Making all this available with just a single click\nWill keep working to improve the app futher and would appreciate any new ideas or feedback (new notes)",
                style: TextStyle(
                    fontFamily: 'MyFlutterApp2',
                    fontWeight: FontWeight.bold,
                    fontSize: hp(2.5)),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
