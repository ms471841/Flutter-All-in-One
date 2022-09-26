import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedBottomBar());
}

class AnimatedBottomBar extends StatefulWidget {
  AnimatedBottomBar({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  List<IconData> iconList = [
    Icons.abc_sharp,
    Icons.access_time,
    Icons.holiday_village,
    Icons.account_tree_rounded
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(), //destination screen
        floatingActionButton: FloatingActionButton(
            //params
            child: Icon(Icons.home_max_outlined),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          backgroundColor: Colors.blue,
          //other params
        ),
      ),
    );
  }
}
