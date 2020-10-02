import 'package:flutter/material.dart';
import 'package:flutter_app_test/utils.dart';

import 'widgets/Favorites.dart';
import 'widgets/Lyrics.dart';
import 'widgets/Songs.dart';

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
            title: Text(Utils.appName),
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