import 'package:rbc_savings_game/game_controller.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'main.dart';

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
  runApp(MaterialApp(
      title: 'RBC Savings Game',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Welcome!'), actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: "Log out",
            onPressed: () {
              MyApp();
            },
          )
        ]),
        body: Stack(
          fit: StackFit.expand,
          children: [gameController.widget],
        ),
      )));
}
