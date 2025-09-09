import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:velik/components/ground_layer.dart';
import 'package:velik/components/hud_text_button.dart';
import 'package:velik/components/parallax_provider.dart';

void main() {
  runApp(GameWidget(game: _FlameGame()));
}

class _FlameGame extends FlameGame {
  final _parallaxProvider = ParallaxProvider();
  final _groundLayer = GroundLayer();

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    if (isMounted) {
      _parallaxProvider.adopt(size);
      _groundLayer.adopt(size);
    }
  }

  @override
  Future<void> onLoad() async {
    add(await _parallaxProvider.load());
    add(_groundLayer..adopt(size));

    _addHudComponents();
  }

  void _addHudComponents() {
    add(
      HudTextButton(
        position: Vector2(10, 10),
        text: 'Slower',
        color: Colors.blue,
        onPressed: _parallaxProvider.slower,
      ),
    );

    add(
      HudTextButton(
        position: Vector2(140, 10),
        text: 'Faster',
        color: Colors.green,
        onPressed: _parallaxProvider.faster,
      ),
    );

    add(
      HudTextButton(
        position: Vector2(270, 10),
        text: 'Uphill',
        color: Colors.orange,
        onPressed: _groundLayer.uphill,
      ),
    );

    add(
      HudTextButton(
        position: Vector2(400, 10),
        text: 'Downhill',
        color: Colors.red,
        onPressed: _groundLayer.downhill,
      ),
    );
  }
}
