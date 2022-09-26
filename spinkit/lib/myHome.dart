// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinHome extends StatelessWidget {
  const SpinHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spinkit flutter")),
      body: GridView.count(
        crossAxisSpacing: 5,
        mainAxisSpacing: 3,
        crossAxisCount: 3,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SpinKitChasingDots(
            color: Colors.indigo,
          ),
          const SpinKitCircle(
            color: Colors.amber,
          ),
          const SpinKitDancingSquare(
            color: Colors.blueAccent,
          ),
          SpinKitDoubleBounce(
            color: Colors.pink,
          ),
          SpinKitFadingGrid(
            color: Colors.orange,
          ),
          SpinKitWanderingCubes(
            color: Colors.teal,
          ),
          SpinKitHourGlass(color: Colors.lightGreenAccent),
          SpinKitDualRing(
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
