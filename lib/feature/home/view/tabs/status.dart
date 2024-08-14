import 'package:clone/common/styles/component_style.dart';
import 'package:clone/constants/_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:status_view/status_view.dart';

import '../../../../common/components/_.dart';
import '../../../../common/utils/widget_functions.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          addHeight(18),
          Padding(
            padding: pagePadding,
            child: const AppText(
              'Privacy',
              size: 16,
              letterSpacing: -0.75,
              color: AppColors.selectedTabIconColor,
            ),
          ),
          Padding(
            padding: pagePadding,
            child: const AppText.bold('Status', size: 30),
          ),
          addHeight(30),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                top: 2.h,
                bottom: 6.h,
                left: 8.w,
                right: 12.w,
              ),
              decoration: tileDecoration,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const UserIcon(),
                      addWidth(8),
                      const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.bold('My Status', letterSpacing: -0.75),
                            AppText.light('Add to my status'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const AppIconButton(icon: CupertinoIcons.camera_fill),
                        addWidth(6),
                        const AppIconButton(icon: Icons.edit),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          addHeight(32),
          Padding(
            padding: pagePadding,
            child: const AppText.light('RECENT UPDATES'),
          ),
          addHeight(4),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 10.h,
                left: 16.w,
                right: 12.w,
              ),
              decoration: tileDecoration,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox.square(
                    dimension: 56.r,
                    child: Image.asset(AppAssets.whatsappIcon),
                  ),
                  addWidth(14),
                  const AppText.bold(
                    'WhatsApp',
                    letterSpacing: -0.75,
                  ),
                  addWidth(4),
                  SizedBox.square(
                    dimension: 22,
                    child: Image.asset(AppAssets.tick),
                  ),
                ],
              ),
            ),
          ),
          addHeight(22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.lock,
                  size: 16.r,
                  color: AppColors.black[300],
                ),
              ),
              const AppText.thin('Your status updates are'),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(0, 7, 11, 7),
                ),
                child: const AppText.thin(
                  ' end to end encrypted',
                  color: AppColors.selectedTabIconColor,
                ),
              )
            ],
          ),
          addHeight(10),
          StatusView(
            radius: 40,
            spacing: 15,
            strokeWidth: 2,
            indexOfSeenStatus: 2,
            numberOfStatus: 5,
            padding: 4,
            centerImageUrl: "https://picsum.photos/200/300",
            seenColor: Colors.grey,
            unSeenColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
