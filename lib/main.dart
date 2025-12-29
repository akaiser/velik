import 'package:flame/game.dart' hide Game;
import 'package:flutter/material.dart';
import 'package:velik/components/controls.dart';
import 'package:velik/components/sun.dart';
import 'package:velik/game.dart';

const _controlsOverlay = 'controls_overlay';

void main() {
  runApp(
    GameWidget(
      game: Game(),
      initialActiveOverlays: const [_controlsOverlay],
      backgroundBuilder: (_) => const Sun(),
      overlayBuilderMap: <String, OverlayWidgetBuilder<Game>>{
        _controlsOverlay: (_, game) => Padding(
          padding: const EdgeInsets.all(8),
          child: Controls(
            slower: game.slower,
            faster: game.faster,
            uphill: game.uphill,
            downhill: game.downhill,
          ),
        ),
      },
    ),
  );
}
