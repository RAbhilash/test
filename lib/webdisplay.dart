// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatelessWidget {
  final String url;
  webview({Key key, @required this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('text'),
          ),
          body: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
