import 'package:flame/game.dart' hide Game;
import 'package:flutter/material.dart';
import 'package:velik/controls.dart';
import 'package:velik/game.dart';

void main() => runApp(
  GameWidget(
    game: Game(),
    initialActiveOverlays: const ['Controls'],
    overlayBuilderMap: {
      'Controls': (context, Game game) => Padding(
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
