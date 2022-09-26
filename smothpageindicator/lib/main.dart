import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(SPIWormRun());
}

class SPIWormRun extends StatefulWidget {
  const SPIWormRun({Key? key}) : super(key: key);

  @override
  _SPIWormState createState() => _SPIWormState();
}

class _SPIWormState extends State<SPIWormRun> {
  var controller;

  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.8,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPI Worm',
      home: Scaffold(
        appBar: AppBar(title: Text('SPI ')),
        body: Container(
            width: double.infinity,
            height: 400,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 300,
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Card(
                          color: Colors.yellow,
                          child: Center(
                            child: Text('Simple Text,Keep Swiping'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Card(
                          color: Colors.white70,
                          child: Center(
                            child: Icon(Icons.favorite),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Card(
                          color: Colors.green,
                          child: Center(
                            child: Icon(Icons.yard),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandDotEffect(
                      expansionFactor: 4,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
