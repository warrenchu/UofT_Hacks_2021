// I'll create a backgorund file so we can work out how to get it in, may delete this
// and merge it back into game_controller.Dart
import 'dart:ui';
import 'package:flame/sprite.dart';
import 'game_controller.dart';

class Background {
  final GameController game;
  Sprite bgSprite;
  Rect bgRect;
  Background(this.game) {
    bgSprite = Sprite("background.png");
    bgRect = Rect.fromLTWH(0, game.screenSize.height - (game.tileSize * 22),
        game.tileSize * 10, game.tileSize * 22);
  }

  void render(Canvas c) {
    bgSprite.renderRect(c, bgRect);
  }

  void update(double t) {}
}
