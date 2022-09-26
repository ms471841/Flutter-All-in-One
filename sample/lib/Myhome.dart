import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:sample/screens/Explore_page.dart';
import 'package:sample/screens/Home_page.dart';
import 'package:sample/screens/Profile_page.dart';
import 'package:sample/screens/Trending_page.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Void Programmer"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 0,
        onTabChangedListener: (pos) {
          setState(() {
            currentPage = pos;
          });
        },
        tabs: [
          TabData(iconData: Icons.home, title: "Home", onclick: () {}),
          TabData(iconData: Icons.explore, title: "Explore", onclick: () {}),
          TabData(
              iconData: Icons.trending_down, title: "Trendind", onclick: () {}),
          TabData(
              iconData: Icons.person_outline, title: "Profile", onclick: () {}),
        ],
      ),
      body: Container(
          child: currentPage == 0
              ? HomePage()
              : currentPage == 1
                  ? ExplorePage()
                  : currentPage == 2
                      ? TrendingPage()
                      : ProfileUI()),
    );
  }
}
