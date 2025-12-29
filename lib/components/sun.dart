import 'package:flutter/material.dart';
import 'package:velik/util/build_context_ext.dart';

const _sunSize = 60.0;

class Sun extends StatefulWidget {
  const Sun({super.key});

  @override
  State<Sun> createState() => _SunState();
}

class _SunState extends State<Sun> {
  late Size _screenSize = context.screenSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenSize = context.screenSize;
  }

  @override
  Widget build(BuildContext context) => Positioned(
    top: _screenSize.height / 3,
    left: _screenSize.width / 2 - _sunSize / 2,
    child: const _Sun(),
  );
}

class _Sun extends StatelessWidget {
  const _Sun();

  @override
  Widget build(BuildContext context) => SizedBox(
    width: _sunSize,
    height: _sunSize,
    child: DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFFFF59D),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFEB3B).withValues(alpha: 0.8),
            blurRadius: 50,
            spreadRadius: 10,
          ),
        ],
      ),
    ),
  );
}
