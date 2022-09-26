// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(PageViewTransition_1_Run());
}

// ignore: camel_case_types
class PageViewTransition_1_Run extends StatefulWidget {
  @override
  PageViewTransition_1_State createState() => new PageViewTransition_1_State();
}

class PageViewTransition_1_State extends State<PageViewTransition_1_Run> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  // ignore: non_constant_identifier_names
  List PageViewItem = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            Icons.pages,
            color: Colors.white,
          ),
          Text(
            "Page 1,Swipe Right!",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.pages,
            color: Colors.white,
          ),
          Text(
            "Page 2,Swipe Right Or Left!",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_left,
            color: Colors.white,
          ),
          Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.pages,
            color: Colors.white,
          ),
          Text(
            "Page 3,Swipe Left!",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_left,
            color: Colors.white,
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page View Transition"),
        ),
        body: PageView.builder(
          itemCount: PageViewItem.length,
          scrollDirection: Axis.horizontal,
          controller: controller,
          itemBuilder: (context, position) {
            return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: PageViewItem[position]);
          },
        ),
      ),
    );
  }
}

_colorful
          ? SlidingClippedNavBar.colorful(
              backgroundColor: Colors.white,
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              // activeColor: const Color(0xFF01579B),
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.event,
                  title: 'Events',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.orange,
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Search',
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.green,
                ),
                BarItem(
                  icon: Icons.bolt_rounded,
                  title: 'Energy',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                ),
                BarItem(
                  icon: Icons.tune_rounded,
                  title: 'Settings',
                  activeColor: Colors.cyan,
                  inactiveColor: Colors.purple,
                ),
              ],
            )
          :