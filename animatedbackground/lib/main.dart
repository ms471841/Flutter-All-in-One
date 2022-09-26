import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAnimatedBackground());
}

class MyAnimatedBackground extends StatefulWidget {
  MyAnimatedBackground({Key? key}) : super(key: key);

  @override
  State<MyAnimatedBackground> createState() => _MyAnimatedBackgroundState();
}

class _MyAnimatedBackgroundState extends State<MyAnimatedBackground>
    with SingleTickerProviderStateMixin {
  ParticleOptions particles = const ParticleOptions(
    baseColor: Colors.cyan,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 70,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Background"),
        ),
        body: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(options: particles),
          child: Center(
              child: Text(
            "Hello this is Random Animated Background",
            style: TextStyle(fontSize: 50),
          )),
        ),
      ),
    );
  }
}
