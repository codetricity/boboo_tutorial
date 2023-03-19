import 'dart:async';

import 'package:boboo_tutorial/main.dart';
import 'package:flame/components.dart';

class BackgroundComponent extends SpriteComponent with HasGameRef<BobooGame> {
  @override
  FutureOr<void> onLoad() async {
    sprite = await gameRef.loadSprite('world/kitchen.png');
    size = gameRef.size;
    return super.onLoad();
  }
}
