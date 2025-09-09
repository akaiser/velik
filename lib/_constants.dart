import 'dart:math' as math;

import 'package:flame/parallax.dart';

const double parallaxVelocityXStep = 3;

const double groundAngleStep = 1 * math.pi / 180;

final parallaxDataList = [
  ParallaxImageData('parallax/_orig/bg.png'),
  ParallaxImageData('parallax/_orig/mountain-far.png'),
  ParallaxImageData('parallax/_orig/mountains.png'),
  ParallaxImageData('parallax/_orig/trees.png'),
  ParallaxImageData('parallax/_orig/foreground-trees.png'),
];

//
// ParallaxImageData('parallax/Island/L1.png'),
// ParallaxImageData('parallax/Island/L2.png'),
// ParallaxImageData('parallax/Island/L3.png'),
// ParallaxImageData('parallax/Island/L4.png'),
// ParallaxImageData('parallax/Island/L5.png'),
// Cutest
// ParallaxImageData('parallax/Forest/10_Sky.png'),
// ParallaxImageData('parallax/Forest/09_Forest.png'),
// ParallaxImageData('parallax/Forest/08_Forest.png'),
// ParallaxImageData('parallax/Forest/07_Forest.png'),
// ParallaxImageData('parallax/Forest/06_Forest.png'),
// ParallaxImageData('parallax/Forest/05_Particles.png'),
// ParallaxImageData('parallax/Forest/04_Forest.png'),
// ParallaxImageData('parallax/Forest/03_Particles.png'),
// ParallaxImageData('parallax/Forest/02_Bushes.png'),
// ParallaxImageData('parallax/Forest/01_Mist.png'),
//
// ParallaxImageData('parallax/RTB/background.png'),
// ParallaxImageData('parallax/RTB/background2.png'),
// ParallaxImageData('parallax/RTB/background3.png'),
// ParallaxImageData('parallax/RTB/background4.png'),
// Nice
// ParallaxImageData('parallax/TheDawn/1.png'),
// ParallaxImageData('parallax/TheDawn/2.png'),
// ParallaxImageData('parallax/TheDawn/3.png'),
// ParallaxImageData('parallax/TheDawn/4.png'),
// ParallaxImageData('parallax/TheDawn/5.png'),
// ParallaxImageData('parallax/TheDawn/6.png'),
// ParallaxImageData('parallax/TheDawn/7.png'),
// ParallaxImageData('parallax/TheDawn/8.png'),
