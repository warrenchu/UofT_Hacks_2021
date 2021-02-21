//import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// This file creates an app bar component to track pocket money and total saved.
// Additionally, the app bar will allow users to deposit money into their Pocket Money "Wallet"

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
  int savingsCounter = 0;
  int pocketMoney = 0;

// Initiate the variables
  void initState() {
    super.initState();
    getIntFromLocalMemory('savingsCounter')
        .then((value) => savingsCounter = value);
    getIntFromLocalMemory('pocketMoney').then((n) => pocketMoney = n);
  }

  void addToTotal() {
    setState(() {
      savingsCounter++;
    });
    saveIntInLocalMemory('savingsCounter', savingsCounter);
  }

  void addToPocket() {
    setState(() {
      pocketMoney++;
    });
    saveIntInLocalMemory('pocketMoney', pocketMoney);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Total Savings:',
            ),
            Text(
              '$savingsCounter',
            ),
            Text(
              'Pocket Money:',
            ),
            Text(
              '$pocketMoney',
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_balance_wallet_outlined),
            tooltip: 'Add funds',
            onPressed: () => {MoneyDrawer},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(50.0, 160.0, 50.0, 0.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          )
        ],
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

class MoneyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'General Settings',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Add money to your wallet'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
