import 'package:flutter/material.dart';

import '../../../constants/_.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: const ShapeDecoration(
        color: AppColors.iconButtonBackground,
        shape: CircleBorder(),
      ),
      child: IconButton(
        visualDensity: VisualDensity.comfortable,
        iconSize: 20,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {},
        icon: Icon(
          icon,
          color: AppColors.selectedTabIconColor,
        ),
      ),
    );
  }
}
