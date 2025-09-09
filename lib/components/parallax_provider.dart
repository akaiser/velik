import 'dart:ui';

import 'package:flame/components.dart';
import 'package:velik/_constants.dart';

class ParallaxProvider {
  late final ParallaxComponent _parallax;

  double _parallaxVelocityX = 0;

  Future<ParallaxComponent> load() async =>
      _parallax = await ParallaxComponent.load(
        parallaxDataList,
        baseVelocity: Vector2(0, 0),
        velocityMultiplierDelta: Vector2(1.5, 1),
        filterQuality: FilterQuality.none,
      );

  // ignore: use_setters_to_change_properties
  void adopt(Vector2 gameSize) => _parallax.size = gameSize;

  void faster() => _setVelocityX(parallaxVelocityXStep);

  void slower() => _setVelocityX(-parallaxVelocityXStep);

  void _setVelocityX(double step) {
    _parallax.parallax?.baseVelocity.x = _parallaxVelocityX += step;
  }
}
