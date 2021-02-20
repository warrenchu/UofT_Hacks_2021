import 'package:rbc_savings_game/game_controller.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void rungame() async {
// create util instance to start flame
  Util flameUtil = Util();

  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  GameController gameController = GameController();
  runApp(gameController.widget);
}
