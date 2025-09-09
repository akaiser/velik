import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/animation.dart';
import 'package:velik/_constants.dart';

class GroundLayer extends RectangleComponent {
  GroundLayer()
    : super(
        anchor: Anchor.topLeft,
        paint: Paint()..color = const Color(0xFF6D4C41),
      );

  void adopt(Vector2 gameSize) {
    this
      ..size = Vector2(gameSize.x * 2, gameSize.y * 2)
      ..position = Vector2(0, gameSize.y - 8);

    if (angle > 0) {
      position.x = gameSize.x;
    }
  }

  void uphill() {
    prepareForAngle(-groundAngleStep);
    add(
      RotateEffect.by(
        -groundAngleStep,
        EffectController(duration: 0.3, curve: Curves.easeOut),
      ),
    );
  }

  void downhill() {
    prepareForAngle(groundAngleStep);
    add(
      RotateEffect.by(
        groundAngleStep,
        EffectController(duration: 0.3, curve: Curves.easeOut),
      ),
    );
  }
}

extension on GroundLayer {
  void prepareForAngle(double deltaAngle) {
    if (angle + deltaAngle > 0) {
      this
        .._setX(size.x / 2)
        .._setAnchor(Anchor.topRight);
    } else {
      this
        .._setX(0)
        .._setAnchor(Anchor.topLeft);
    }
  }

  void _setX(double x) {
    if (position.x != x) {
      position.x = x;
    }
  }

  void _setAnchor(Anchor anchor) {
    if (this.anchor != anchor) {
      this.anchor = anchor;
    }
  }
}
