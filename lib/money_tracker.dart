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
            onPressed: () {},
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
