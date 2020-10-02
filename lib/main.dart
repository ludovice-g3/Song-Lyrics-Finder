import 'package:flutter/material.dart';
import 'package:flutter_app_test/SplashScreen.dart';

import 'utils.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Utils.appName,
      theme: ThemeData(accentColor: Colors.white), // ThemeData
      home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Song Lyrics Finder'),
      // ), // AppBar
        body: Container(
          child: SplashScreen(),
        ),
      ), // Scaffold
    ); //MaterialApp
  }
}
