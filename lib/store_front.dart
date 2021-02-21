import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'store_catalogue.dart';

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

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);

// Routes to Catalogues
final goToHair = StoreCatalogueHair();

buildMenuButton(context, prompt, onClick){
  final tempButton = Material(
          elevation: 6.0,
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => onClick),
              );
            },
            child: Text(prompt,
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
    );

  return tempButton;
}

buildMenuButtonLocked(context, prompt){
  final tempButton = Material(
          elevation: 6.0,
          color: Color(0xFF757575),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            child: Text(prompt,
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
    );

  return tempButton;
}

// Pop-up Window Thing
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Oh no! Locked Feature!'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Currently unavailable for use in demo."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('Close'),
      ),
    ],
  );
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
        buildMenuButton(context, "Hair", goToHair),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Shirt", null),
        SizedBox(height: 10.0),
        buildMenuButton(context, "Pants", null),
        SizedBox(height: 10.0),
        buildMenuButtonLocked(context, "Shoes"),
        SizedBox(height: 10.0),
        buildMenuButtonLocked(context, "Accessories"),
        SizedBox(height: 10.0),
        buildMenuButtonLocked(context, "Home"),
        SizedBox(height: 10.0),
        buildMenuButtonLocked(context, "Pets (Endgame)"),
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
                    height: 30.0,
                    child: Text(
                      "Categories:",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      textScaleFactor: 1.7,
                    )),
                menu,
                // backButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(StoreFront());
}