import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  const Controls({
    required this.slower,
    required this.faster,
    required this.uphill,
    required this.downhill,
    super.key,
  });

  final VoidCallback slower;
  final VoidCallback faster;
  final VoidCallback uphill;
  final VoidCallback downhill;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 12,
    runSpacing: 12,
    children: [
      ElevatedButton(
        onPressed: slower,
        child: const Text('Slower'),
      ),
      ElevatedButton(
        onPressed: faster,
        child: const Text('Faster'),
      ),
      ElevatedButton(
        onPressed: uphill,
        child: const Text('Uphill'),
      ),
      ElevatedButton(
        onPressed: downhill,
        child: const Text('Downhill'),
      ),
    ],
  );
}
