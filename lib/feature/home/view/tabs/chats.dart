import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/_.dart';
import '../../../../common/utils/widget_functions.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      child: Column(
        children: [
          addHeight(36),
          const AppText('Chats'),
        ],
      ),
    );
  }
}
