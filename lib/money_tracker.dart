//import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// This file creates an app bar component to track pocket money and total saved.
// Additionally, the app bar will allow users to deposit money into their Pocket Money "Wallet"

final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

void main() => runApp(Tracker());

class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MoneyTracker());
  }
}

class MoneyTracker extends StatefulWidget {
  @override
  _MoneyTrackerState createState() => new _MoneyTrackerState();
}

class _MoneyTrackerState extends State<MoneyTracker> {
  int savingsCounter = 600;
  int pocketMoney = 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Funding')),

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
                          height: 70.0,
                          child: Text(
                              'Total Savings: ${savingsCounter}',
                              textScaleFactor: 2,
                              textDirection: TextDirection.ltr)),
                SizedBox(
                          height: 70.0,
                          child: Text(
                              'Pocket Money: ${pocketMoney}',
                              textScaleFactor: 2,
                              textDirection: TextDirection.ltr)),
                Material(
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(3.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => _buildPopupDialog(context),
                      );
                    },
                    child: Text("Deposit Funds",
                        textAlign: TextAlign.center,
                        style:
                            style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                Material(
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(3.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => _buildPopupDialog(context),
                      );
                    },
                    child: Text("Deposit Funds",
                        textAlign: TextAlign.center,
                        style:
                            style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // save the values to the prefs
  }
}

Future<int> getIntFromLocalMemory(String key) async {
  var pref = await SharedPreferences.getInstance();
  // return the value
  var number = pref.getInt(key) ?? 0;
  return number;
}

// get the value
Future<int> saveIntInLocalMemory(String key, int value) async {
  var pref = await SharedPreferences.getInstance();
  // store the value
  pref.setInt(key, value);
}

// No Money Pop-Up-o
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Oh no! Locked Feature!'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Can't spend real or fake money for this stuff just yet."),
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

