import 'dart:async';

import 'package:boboo_tutorial/main.dart';
import 'package:flame/components.dart';

class CharacterComponent extends SpriteComponent with HasGameRef<BobooGame> {
  final speed = 3.0;
  @override
  FutureOr<void> onLoad() async {
    sprite = await gameRef.loadSprite('actors/boboo_solo.png');
    size = Vector2.all(138);
    position = gameRef.size / 2;
    anchor = Anchor.center;
    return super.onLoad();
  }

  @override
  void update(double dt) {
    switch (gameRef.joystick.direction) {
      case JoystickDirection.down:
        if (y < gameRef.size.y) {
          y += speed * gameRef.joystick.delta.y * dt;
        }
        break;
      case JoystickDirection.up:
        if (y > 0) {
          y += speed * gameRef.joystick.delta.y * dt;
        }
        break;
      case JoystickDirection.right:
        if (x < gameRef.size.x) {
          x += speed * gameRef.joystick.delta.x * dt;
        }
        break;
      case JoystickDirection.left:
        if (x > 0) {
          x += gameRef.joystick.delta.x * speed * dt;
        }
        break;
      default:
        break;
    }

    super.update(dt);
  }
}
