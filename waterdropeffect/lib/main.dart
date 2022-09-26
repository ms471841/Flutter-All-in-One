import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Drop Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color navigationBarColor = Colors.red;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return Scaffold(
        //backgroundColor: Colors.greenAccent,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("Page 1"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Page 2"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Page 3"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Page 4"),
            ),
          ],
        ),
        bottomNavigationBar: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 4),
                  blurRadius: 8.0)
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: WaterDropNavBar(
              backgroundColor: navigationBarColor,
              onItemSelected: (int index) {
                setState(() {
                  selectedIndex = index;
                });
                pageController.animateToPage(selectedIndex,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeOutQuad);
              },
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  filledIcon: Icons.home_rounded,
                  outlinedIcon: Icons.home_outlined,
                ),
                BarItem(
                    filledIcon: Icons.phone_android_rounded,
                    outlinedIcon: Icons.phone_android_outlined),
                BarItem(
                  filledIcon: Icons.trending_flat_rounded,
                  outlinedIcon: Icons.trending_flat_outlined,
                ),
                BarItem(
                    filledIcon: Icons.favorite_rounded,
                    outlinedIcon: Icons.favorite_border_rounded),
              ],
            ),
          ),
        ));
  }
}
