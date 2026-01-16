import 'dart:math' as math;
import 'dart:ui' show Color;

import 'package:flame/parallax.dart';

// Main
const gameBackgroundColor = Color(0xFFAB6A8B);

// Parallax

final parallaxDataList = [
  ParallaxImageData('parallax/mountain-far.png'),
  ParallaxImageData('parallax/mountains.png'),
  ParallaxImageData('parallax/clouds.png'),
  ParallaxImageData('parallax/trees.png'),
  ParallaxImageData('parallax/foreground-trees.png'),
];

const double parallaxVelocityXStep = 3;

// Ground

const groundColor = Color(0xFF6D4C41);
const double groundAngleStep = math.pi / 180;
const double maxGroundAngle = 0.45;

// Sun

const sunSize = 60.0;
const sunColor = Color(0xFFFFF59D);
const sunShadowColor = Color(0xFFFFEB3B);
