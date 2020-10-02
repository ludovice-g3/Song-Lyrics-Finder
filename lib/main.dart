import 'package:flutter/material.dart';
import 'package:flutter_app_test/SplashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(accentColor: Colors.red), // ThemeData
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
