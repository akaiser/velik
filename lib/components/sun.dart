import 'package:flutter/widgets.dart';
import 'package:velik/_constants.dart';
import 'package:velik/util/build_context_ext.dart';

class Sun extends StatefulWidget {
  const Sun({super.key});

  @override
  State<Sun> createState() => _SunState();
}

class _SunState extends State<Sun> {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Positioned(
      top: screenSize.height / 3,
      left: screenSize.width / 2 - sunSize / 2,
      child: const _Sun(),
    );
  }
}

class _Sun extends StatelessWidget {
  const _Sun();

  @override
  Widget build(BuildContext context) => SizedBox(
    width: sunSize,
    height: sunSize,
    child: DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: sunColor,
        boxShadow: [
          BoxShadow(
            color: sunShadowColor.withValues(alpha: 0.8),
            blurRadius: 50,
            spreadRadius: 10,
          ),
        ],
      ),
    ),
  );
}
