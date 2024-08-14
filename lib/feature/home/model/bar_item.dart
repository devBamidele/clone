import 'package:flutter/material.dart';

class BarItem {
  final String name;
  final IconData? icon;
  final String? path;
  final double? size;

  BarItem({required this.name, this.icon, this.path, this.size})
      : assert((icon == null && path != null) || (icon != null && path == null),
            'Either icon or path must be null, but not both or neither.');

  bool get hasIcon => icon != null;
  bool get hasPath => path != null;
}
