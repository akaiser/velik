import 'package:flutter/widgets.dart';

extension BuildContextExt on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
}
