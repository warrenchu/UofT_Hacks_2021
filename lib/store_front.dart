import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create the widget context
    return MaterialApp(
      title: "Store Front",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: storeFront(title: 'Store Front'),
    );
  }
}

buildMenuButton(context, prompt){
  final tempButton = Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // the actual main method is called rungame in maingame.dart
              // transition over to the game
            },
            child: Text(prompt,
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
    );

  return tempButton;
}

class storeFront extends StatefulWidget {
  storeFront({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _storeFrontState createState() => _storeFrontState();
}

class _storeFrontState extends State<storeFront> {
  // create the login screen
  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    final menu = ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        buildMenuButton(context, "Hair"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Shirt"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Pants"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Shoes"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Accessories"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Home"),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Pets (Endgame)"),
        SizedBox(height: 10.0),
      ],
    );

    // final backButton = Material(
    //   elevation: 6.0,
    //   color: Color(0xFFFF0000),
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     // For onPressed, activate the actual game
    //     onPressed: () {
    //       // the actual main method is called rungame in maingame.dart
    //       // transition over to the game
    //     },
    //     child: Text("Back",
    //         textAlign: TextAlign.center,
    //         style: style.copyWith(
    //             color: Colors.white, fontWeight: FontWeight.bold)),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(title: Text('Upgrade Store')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 50.0,
                    child: Text(
                      "Item Type",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      textScaleFactor: 1.7,
                    )),
                menu,
                SizedBox(height: 68.0),
                backButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);
void main() {
  runApp(StoreFront());
}