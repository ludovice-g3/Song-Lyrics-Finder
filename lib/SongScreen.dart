/* ******************************************                 *** START********************************************* */
import 'dart:math';
import 'package:flutter/material.dart';

class LListWheelScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
        children: listItems(context),
        itemExtent: 100,
        useMagnifier: true,
        magnification: 1.25);
  }
}

List<Widget> listItems(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  int i = 0;
  List<Widget> items = new List();
  do {
    i += 1;
    items.add(Expanded(
      child: Container(
        width: width * 0.75,
        child: Expanded(
          child: Text('asdf'),
        ),
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              .withOpacity(1.0)),
    ));
  } while (i <= 100);
  return items;
}
