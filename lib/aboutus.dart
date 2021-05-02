import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

  const colorSize = [Colors.redAccent,Colors.greenAccent,Colors.blueAccent];
  const colorTextStyle = TextStyle(
    fontFamily: 'MyFlutterApp',
    fontSize:64.0,fontWeight:FontWeight.bold,
  );
class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Why did you click !'),
        backgroundColor: Colors.orange[400],
      ),
      body:Column(
        children:<Widget>[
         AnimatedTextKit(
           animatedTexts: [
             TypewriterAnimatedText(
               'This shows that you are the biggest son of ',textStyle:colorTextStyle,
             speed: const Duration(milliseconds:200),
             ),
             FlickerAnimatedText('*****',textStyle: colorTextStyle),
           ],
           totalRepeatCount: 1,
           pause: const Duration(milliseconds:100),
           displayFullTextOnTap: true,
           stopPauseOnTap: true)
        ]
      )
    );
  }
}