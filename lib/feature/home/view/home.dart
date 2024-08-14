import 'package:clone/feature/home/model/bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/components/_.dart';
import '../../../constants/_.dart';
import 'tabs/_.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> _pages;
  int selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      const Status(),
      const Calls(),
      const Communities(),
      const Chats(),
      const Settings(),
    ];
    super.initState();
  }

  void _selectedTab(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SizedBox(
            child: _pages.elementAt(selectedIndex),
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          onTabSelected: _selectedTab,
          items: [
            BarItem(name: 'Status', icon: CupertinoIcons.chat_bubble),
            BarItem(name: 'Calls', icon: CupertinoIcons.phone),
            BarItem(
                name: 'Communities', icon: CupertinoIcons.person_3, size: 38),
            BarItem(name: 'Chats', icon: CupertinoIcons.chat_bubble_2),
            BarItem(name: 'Settings', icon: CupertinoIcons.settings),
          ],
        ),
      ),
    );
  }
}
