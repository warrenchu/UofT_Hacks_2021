import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'maingame.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create the widget context
    return MaterialApp(
      title: "Login",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Game Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // create the login screen
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    // card number
    final cardField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Card number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
    final passwordField = TextField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final loginButton = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // For onPressed, activate the actual game
        onPressed: () {
          // the actual main method is called rungame in maingame.dart
          rungame();
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // need a logo, so just added a title first
                // RBC Logo?
                SizedBox(
                  height: 155.0,
                  child:
                      Image.asset("/assets/rbcLogo.png", fit: BoxFit.contain),
                ),
                SizedBox(
                    height: 50.0,
                    child: Text("Welcome to the Savings Game!",
                        textDirection: TextDirection.ltr)),

                SizedBox(height: 45.0),
                cardField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButton,
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
  runApp(MyApp());
}
