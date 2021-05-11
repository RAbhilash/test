import 'package:flutter/material.dart';
import 'package:app/home_screen.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: HomeScreen(),
      image: Image.asset("assets/images/logo.png"),
      photoSize: MediaQuery.of(context).size.width * .3,
      backgroundColor: Colors.red[300],
      loaderColor: Colors.white,
    );
  }
}
