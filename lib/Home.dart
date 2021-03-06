import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_test/MyTab.dart';

import 'utils.dart';

class Home extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: Utils.appName,
      theme: ThemeData(accentColor: Colors.white), // ThemeData
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            // Initialize FlutterFire:
            future: _initialization,
            builder: (context, snapshot) {
              // Check for errors
              if (snapshot.hasError) {
                return Text('hasError');
              }

              // Once complete, show your application
              if (snapshot.connectionState == ConnectionState.done) {

                return MyTab();
              }

              // Otherwise, show something whilst waiting for initialization to complete
              return Text('loading');
            },
          ),
        ),
      ), // Scaffold
    ); //MaterialApp
  }
}
