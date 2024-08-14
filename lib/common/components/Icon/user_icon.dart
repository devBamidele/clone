import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/_.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 72.r,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.antiAlias,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  width: 60.r,
                  height: 60.r,
                  decoration: const BoxDecoration(
                    gradient: AppColors.profileGradient,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.75,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 72.r,
                  height: 72.r,
                  decoration: const BoxDecoration(
                    gradient: AppColors.profileGradient,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Icon(
                      Icons.person,
                      size: 72.r,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 2,
            right: 4,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add_circle_rounded,
                color: AppColors.selectedTabIconColor,
                size: 24, // Icon size
              ),
            ),
          )
        ],
      ),
    );
  }
}
