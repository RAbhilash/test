import 'package:flutter/material.dart';
import 'dart:async';
import 'package:app/home_screen.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main(){
  runApp(new MaterialApp(
    home:new SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String,WidgetBuilder>{
      '/HomeScreen':(BuildContext context)=>new HomeScreen()},
    ));
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  startTime() async{
    var duration = new Duration(seconds:10);
    return new Timer(duration,navigationPage);
  }
  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
  @override
  void initState(){
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child:new Container
        (
        height:(MediaQuery.of(context).size.height/1080)*2000,
        width:(MediaQuery.of(context).size.width/1080)*2000,
          decoration:BoxDecoration(
        color: Colors.red[300],
        ),
        child: new Column
        (mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height:10,
            ),
            Container(
              height:(MediaQuery.of(context).size.height/1080)*500,
              width:(MediaQuery.of(context).size.height/1080)*500,
              decoration: BoxDecoration(
                color:Colors.red[300],
              image:DecorationImage(
                image: AssetImage('assets/images/gif22.png',)
              )
            ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
             child: Text('WELCOME',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),)
            ),
            Container(padding: EdgeInsets.fromLTRB(0,30,0,0),
            // child:CircularProgressIndicator(
            //   backgroundColor: Colors.white,
            //   valueColor: ,
            child: CircularProgressIndicator(backgroundColor: Colors.cyanAccent,valueColor:new AlwaysStoppedAnimation<Color>(Colors.yellow),),
            ),
        ],)
      ),
      ),
    );
  }
}
// void main() => runApp(MySplash());
// class MySplash extends StatefulWidget {
//   @override
//   _MySplashState createState() => _MySplashState();
// }

// class _MySplashState extends State<MySplash> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 15,
//       backgroundColor: Colors.grey[350],
//       image: Image.asset("assets/images/gif2.gif"),
//       loaderColor: Colors.white,
      
//       navigateAfterSeconds: MyApp(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     return MediaQuery(
//           data: new MediaQueryData(),
//           child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: HomeScreen(),
//       ),
//     );
//   }
// }
