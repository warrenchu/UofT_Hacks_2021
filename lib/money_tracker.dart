//import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MoneyTracker extends StatefulWidget {
  @override
  _MoneyTrackerState createState() => new _MoneyTrackerState();
}

class _MoneyTrackerState extends State<MoneyTracker> {
  int savingsCounter = 0;
  int pocketMoney = 0;

  void addToTotal() {
    setState(() {
      savingsCounter++;
    });
  }

  void addToPocket() {
    setState(() {
      pocketMoney++;
    });
  }

  void initState() {
    addToTotal();
    addToPocket();
    super.initState();
  }

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
    );
  }
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
