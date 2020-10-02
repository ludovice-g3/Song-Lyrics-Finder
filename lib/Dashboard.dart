import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_test/MyTab.dart';

import 'FloatingTabBar.dart';
import 'SongScreen.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('artists');

    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(accentColor: Colors.red), // ThemeData
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Song Lyrics Finder'),
        // ), // AppBar
        body: Center(
          child: Container(
            child: FutureBuilder<DocumentSnapshot>(
              future: users.doc('53t6nVEc7V5kBhOEGUl7').get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  Map<String, dynamic> data = snapshot.data.data();
                  // return Text("Full Name: ${data['name']} ${data['name']}");
                  // return LListWheelScrollView();
                  return MyTab();
                }

                return Text("loading");
              },
            ),
          ),
        ),
      ), // Scaffold
    ); //MaterialApp
  }
}
