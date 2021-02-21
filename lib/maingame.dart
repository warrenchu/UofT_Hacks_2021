import 'package:rbc_savings_game/game_controller.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:rbc_savings_game/money_tracker.dart';
import 'package:rbc_savings_game/questionnaire.dart';
import 'main.dart';
import 'store_front.dart';
import 'characterCreate.dart';

class runGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [storeFront()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.local_convenience_store),
          tooltip: "Go to store",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => storeFront()));
          },
        ),
        IconButton(
            icon: const Icon(Icons.monetization_on_outlined),
            tooltip: "Money tracker",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoneyTracker()));
            }),
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          tooltip: "Log Out",
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
        ),
      ]),
      body: Stack(fit: StackFit.expand, children: [GameController().widget]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

void rungame() async {
// create util instance to start flame
  Util flameUtil = Util();

  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  Flame.images.loadAll(<String>["assets/images/background.png"]);

  GameController gameController = GameController();
  //runApp(gameController.widget);
  // I decided to run the game within a Stack so that we can render elements
  // over the background

  runApp(runGameApp());
}

// Log Out Check
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Are you sure you want to log out?'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Clicking yes will return you to Sign-In Screen."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('No'),
      ),
      new FlatButton(
        onPressed: () {
          Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyApp()));
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('Yes'),
      ),
    ],
  );
}