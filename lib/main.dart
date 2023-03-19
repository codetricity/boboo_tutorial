import 'dart:async';

import 'package:boboo_tutorial/actors/character_component.dart';
import 'package:boboo_tutorial/world/background__component.dart';
import 'package:boboo_tutorial/world/game_joystick.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(GameWidget(game: BobooGame()));
}

class BobooGame extends FlameGame with HasDraggables {
  CharacterComponent boboo = CharacterComponent();
  BackgroundComponent kitchen = BackgroundComponent();

  late final GameJoystick joystick;

  @override
  FutureOr<void> onLoad() async {
    add(kitchen);
    add(boboo);
    joystick = GameJoystick();
    add(joystick);
    return super.onLoad();
  }
}
