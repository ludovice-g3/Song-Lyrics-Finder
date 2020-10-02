import 'package:flutter/material.dart';
import 'package:flutter_app_test/Dashboard.dart';
import 'package:flutter_app_test/Favorites.dart';
import 'package:flutter_app_test/Lyrics.dart';
import 'package:flutter_app_test/Songs.dart';

void main() {
  runApp(MyTab());
}

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.library_music)),
                Tab(icon: Icon(Icons.favorite)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Songs(),
              Lyrics(),
              Favorites(),
            ],
          ),
        ),
      ),
    );
  }
}