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
import 'money_tracker.dart';

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
  final List<Widget> _children = [StoreFront()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.local_convenience_store),
          tooltip: "Go to store",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StoreFront()));
          },
        ),
        IconButton(
          icon: const Icon(Icons.rate_review),
          tooltip: "Go to questionnaire",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Questionnaire()));
          },
        ),
        IconButton(
          icon: const Icon(Icons.monetization_on_outlined),
          tooltip: "Money tracker",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoneyTracker()));
          },
        )
      ]),
      body: Stack(fit: StackFit.expand, children: [
        Positioned.fill(child: GameController().widget),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_convenience_store),
            title: new Text('Store'),
          ),
        ],
      ),
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
