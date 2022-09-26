import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sliding Clipped NavBar',
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 201, 199, 186),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfPages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: const Color.fromARGB(255, 58, 57, 57),
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: const Color.fromARGB(255, 1, 165, 69),
        inactiveColor: Colors.white,
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.css,
            title: 'CSS',
          ),
          BarItem(
            icon: Icons.html,
            title: 'HTML',
          ),
          BarItem(
            icon: Icons.javascript,
            title: 'JavaScript',
          ),
          BarItem(
            icon: Icons.flutter_dash,
            title: 'Flutter',
          ),
        ],
      ),
    );
  }
}

List<Widget> _listOfPages = [
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.css,
      size: 56,
      color: Colors.green,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.html,
      size: 56,
      color: Colors.green,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.javascript,
      size: 56,
      color: Colors.green,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.flutter_dash,
      size: 56,
      color: Colors.green,
    ),
  ),
];
