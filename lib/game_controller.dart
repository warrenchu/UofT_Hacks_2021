import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:rbc_savings_game/background.dart';

class GameController extends Game {
  Size screenSize;
  double tileSize;
  Background background;

  GameController() {
    initialize();
  }
  void initialize() async {
    resize(await Flame.util.initialDimensions());
    background = Background(this);
  }

  void render(Canvas c) {
    //Rect background = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    // white background
    //Paint backgroundPaint = Paint()..color = Color(0xFF1ADFA8);
    //c.drawRect(background, backgroundPaint);
    background.render(c);
  }

  void update(double t) {}
  void resize(Size size) {
    screenSize = size;
    // create the tiles? But we might create the characters
    tileSize = screenSize.width / 10;
  }
}
