import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(GameWidget(game: BobooGame()));
}

class BobooGame extends FlameGame {
  SpriteComponent boboo = SpriteComponent();
  SpriteComponent kitchen = SpriteComponent();

  @override
  FutureOr<void> onLoad() async {
    add(
      kitchen
        ..sprite = await loadSprite('world/kitchen.png')
        ..size = size,
    );
    add(
      boboo
        ..sprite = await loadSprite('actors/boboo_solo.png')
        ..size = Vector2.all(138)
        ..position = Vector2(0, 200)
        ..anchor = Anchor.center,
    );
    return super.onLoad();
  }

  @override
  void update(double dt) {
    if (boboo.x < size.x) {
      boboo.x += 60 * dt;
    }

    super.update(dt);
  }
}
