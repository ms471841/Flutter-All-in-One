import 'package:flutter/material.dart';

void main() {
  runApp(PageviewAnimation());
}

class PageviewAnimation extends StatefulWidget {
  PageviewAnimation({Key? key}) : super(key: key);

  @override
  State<PageviewAnimation> createState() => _PageviewAnimationState();
}

class _PageviewAnimationState extends State<PageviewAnimation> {
  PageController controller = PageController();
  static dynamic currentPageValue = 0.0;

  List pageViewItem = [
    page(currentPageValue, Colors.tealAccent),
    page(2, Colors.amber),
    page(3, Colors.cyan)
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page View Animation 1"),
        ),
        body: PageView.builder(
            itemCount: pageViewItem.length,
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemBuilder: (context, position) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotate3(currentPageValue - position),
                child: pageViewItem[position],
              );
            }),
      ),
    );
  }
}

Widget page(var pageno, Color color) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.pages,
          color: Colors.white,
        ),
        Text("${pageno}, Swipe Right or left"),
        Icon(Icons.arrow_right, color: Colors.white),
      ],
    ),
  );
}
