import 'package:flutter/material.dart';

import 'app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            backPage,
            frontPage,
            rotateBtn,
            roundBtn,
            chatBtn,
            feedsBtn,
            indicator,
            titleText,
          ],
        ),
      ),
    );
  }
}
