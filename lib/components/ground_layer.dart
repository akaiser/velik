import 'dart:ui';

import 'package:flame/components.dart';
import 'package:velik/_constants.dart';

class GroundLayer extends RectangleComponent {
  GroundLayer()
    : super(
        anchor: Anchor.topLeft,
        paint: Paint()..color = groundColor,
      );

  void adopt(Vector2 gameSize) {
    this
      ..size = Vector2(gameSize.x * 2, gameSize.y * 2)
      ..position = Vector2(0, gameSize.y - 8);

    if (angle > 0) {
      position.x = gameSize.x;
    }
  }

  void uphill() => setAngle(-groundAngleStep);

  void downhill() => setAngle(groundAngleStep);
}

extension on RectangleComponent {
  void setAngle(double step) {
    final newAngle = (angle + step)
        .clamp(-maxGroundAngle, maxGroundAngle)
        .maybeZero();

    if (newAngle != angle) {
      angle = newAngle;

      if (angle > 0) {
        _setX(size.x / 2);
        _setAnchor(Anchor.topRight);
      } else {
        _setX(0);
        _setAnchor(Anchor.topLeft);
      }
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

extension on double {
  double maybeZero({double epsilon = 1e-10}) => abs() < epsilon ? 0.0 : this;
}
