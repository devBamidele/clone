import 'package:clone/common/components/_.dart';
import 'package:clone/common/utils/widget_functions.dart';
import 'package:clone/feature/home/model/bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/_.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
    required this.onTabSelected,
    required this.items,
  });

  final ValueChanged<int> onTabSelected;
  final List<BarItem> items;

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  // Update Index
  _updatedIndex(int index) {
    widget.onTabSelected(index);
    setState(
      () => _selectedIndex = index,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Generate a list of the items for the BottomNavBar
    List<Widget> items = List.generate(
      widget.items.length,
      (_) {
        int flex = _ == 2 ? 2 : 1;
        return _buildTabItem(
          item: widget.items[_],
          index: _,
          onPressed: _updatedIndex,
          flex: flex,
        );
      },
    );

    return BottomAppBar(
      color: AppColors.backgroundColor,
      child: Row(children: items),
    );
  }

  Widget _buildTabItem({
    required BarItem item,
    required int index,
    ValueChanged<int>? onPressed,
    required int flex,
  }) {
    Color? color = _selectedIndex == index
        ? AppColors.selectedTabIconColor
        : AppColors.black[300];

    return Expanded(
      flex: flex, // Apply the flex value
      child: SizedBox(
        child: Material(
          type: MaterialType.transparency,
          child: GestureDetector(
            onTap: () => onPressed!(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item.hasPath
                    ? SvgPicture.asset(
                        item.path!,
                        height: 29,
                        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
                      )
                    : Icon(item.icon, color: color, size: item.size?.r ?? 32.r),
                addHeight(flex == 2 ? 0 : 5),
                AppText.light(
                  item.name,
                  weight: FontWeight.w500,
                  size: 11,
                  color: color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
