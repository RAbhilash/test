import 'package:flutter/material.dart';
import 'package:app/home_screen.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // also it will be having 3 cases like when app in foreground/background/active and user select notif . - aditya
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
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
