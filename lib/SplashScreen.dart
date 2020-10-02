/* ****************************************
                 * START***
**************************************** */
import 'dart:async';

import 'package:flutter/material.dart';

import 'Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _Splash1State createState() => _Splash1State();
}
class _Splash1State extends State<SplashScreen> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    final CurvedAnimation curve =
    CurvedAnimation(parent: controller, curve: Curves.ease);
    animation = Tween(begin: 1.0, end: 0.2).animate(curve);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        controller.reverse();
      else if (status == AnimationStatus.dismissed) controller.forward();
    });
    controller.forward();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())));
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).accentColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FadeTransition(
          opacity: animation,
          // image here
          // child: FlutterLogo(),
          child: Image.asset('assets/applogo.png'),
        ));
  }
}
/* ****************************************
*******************************************
*******************************************
              * END***
*******************************************
*******************************************
**************************************** */