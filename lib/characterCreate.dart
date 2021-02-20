import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'maingame.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Avatar(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icons(),
            Icons(),
            Icons(),
            Icons(),
            Icons()
        ],),
        Expanded(child: SizedBox(
          height: 50,
          child: new GridView.count(
            crossAxisCount: 4,
            padding: const EdgeInsets.all(4),
            // children: _buildGridTileList(10))
        ))
        )],
    );
  }
}

// List<Container> _buildGridTileList(int count) => List.generate(
//    count, (i) => Container(child: Image.asset('images/pic$i.jpg')));

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      height: (MediaQuery.of(context).size.height * (2/3)),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}


class Icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyAppBar(),
  ));
}