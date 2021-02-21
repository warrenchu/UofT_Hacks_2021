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
    final List<String> storeCategories = <String>[
      'Hair',
      'Shirt',
      'Pants',
      'Shoes'
    ];
    final List<int> colorCodes = <int>[600, 500, 200, 100];
    final menu = ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // the actual main method is called rungame in maingame.dart
              // transition over to the game
            },
            child: Text("Hair",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(height: 10.0),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Shirt",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(height: 10.0),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Pants",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Shoes",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Accessories",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Home",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              // Go to page
            },
            child: Text("Pets",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );

    final backButton = Material(
      elevation: 6.0,
      color: Color(0xFFFF0000),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // For onPressed, activate the actual game
        onPressed: () {
          // the actual main method is called rungame in maingame.dart
          // transition over to the game
        },
        child: Text("Back",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

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
