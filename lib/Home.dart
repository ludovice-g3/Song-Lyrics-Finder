import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(accentColor: Colors.white), // ThemeData
      home: Scaffold(
        appBar: AppBar(
          title: Text('Song Lyrics Finder'),
        ), // AppBar
        body: Container(
          child: Text("asdfsadf"),
        ),
      ), // Scaffold
    ); //MaterialApp
  }
}
