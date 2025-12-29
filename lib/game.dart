import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:velik/components/ground_layer.dart';
import 'package:velik/components/parallax_provider.dart';

class Game extends FlameGame {
  final _parallaxProvider = ParallaxProvider();
  final _groundLayer = GroundLayer();

  void slower() => _parallaxProvider.slower();

  void faster() => _parallaxProvider.faster();

  void uphill() => _groundLayer.uphill();

  void downhill() => _groundLayer.downhill();

  @override
  Color backgroundColor() => const Color(0xFFAB6A8B);

  @override
  Future<void> onLoad() async {
    add(await _parallaxProvider.load());
    add(_groundLayer..adopt(size));
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    if (isMounted) {
      _parallaxProvider.adopt(size);
      _groundLayer.adopt(size);
    }
  }
}
