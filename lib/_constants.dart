import 'dart:math' as math;

import 'package:flame/parallax.dart';

const double parallaxVelocityXStep = 3;

const double groundAngleStep = 1 * math.pi / 180;

final parallaxDataList = [
  ParallaxImageData('parallax/mountain-far.png'),
  ParallaxImageData('parallax/mountains.png'),
  ParallaxImageData('parallax/clouds.png'),
  ParallaxImageData('parallax/trees.png'),
  ParallaxImageData('parallax/foreground-trees.png'),
];
