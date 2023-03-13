import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/widgets.dart' show EdgeInsets;

class GameJoystick extends JoystickComponent {
  GameJoystick()
      : super(
            knob: CircleComponent(
              radius: 30,
              paint: BasicPalette.red.withAlpha(150).paint(),
            ),
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            background: CircleComponent(
                radius: 100, paint: BasicPalette.black.withAlpha(100).paint()));
  @override
  Future<void> onLoad() {
    return super.onLoad();
  }
}
