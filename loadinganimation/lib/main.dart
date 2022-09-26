import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Loading Animation widget'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: LoadingAnimationWidget.twistingDots(
                leftDotColor: const Color(0xFF1A1A3F),
                rightDotColor: Color.fromARGB(255, 12, 110, 42),
                size: 50,
              ),
              title: Text(
                'twisting Dots',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.staggeredDotsWave(
                color: Color.fromARGB(255, 26, 153, 68),
                size: 50,
              ),
              title: Text(
                'staggered dots wave',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.inkDrop(
                color: Color.fromARGB(255, 26, 153, 68),
                size: 50,
              ),
              title: Text(
                'inkDrop',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.bouncingBall(
                color: Color.fromARGB(255, 26, 153, 68),
                size: 50,
              ),
              title: Text(
                'bouncingBall',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.flickr(
                leftDotColor: const Color(0xFF1A1A3F),
                rightDotColor: Color.fromARGB(255, 12, 110, 42),
                size: 50,
              ),
              title: Text(
                'staggered dots wave',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.fourRotatingDots(
                color: Color.fromARGB(255, 12, 110, 42),
                size: 50,
              ),
              title: Text(
                'staggered dots wave',
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: LoadingAnimationWidget.newtonCradle(
                color: Color.fromARGB(255, 12, 110, 42),
                size: 50,
              ),
              title: Text(
                'staggered dots wave',
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
