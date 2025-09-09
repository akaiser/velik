import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class HudTextButton extends HudMarginComponent {
  HudTextButton({
    required String text,
    required MaterialColor color,
    required Vector2 position,
    required void Function() onPressed,
  }) : super(
         position: position,
         children: [
           ButtonComponent(
             button: _Button(text: text, color: color),
             buttonDown: _Button(text: text, color: color.shade700),
             onPressed: onPressed,
           ),
         ],
       );
}

class _Button extends RectangleComponent {
  _Button({required String text, required Color color})
    : super(
        size: Vector2(120, 40),
        paint: Paint()..color = color,
        children: [TextBoxComponent(text: text)],
      );
}
