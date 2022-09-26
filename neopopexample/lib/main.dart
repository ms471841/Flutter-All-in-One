import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:neopop/widgets/shimmer/neopop_shimmer.dart';

void main() {
  runApp(NeopopExample());
}

class NeopopExample extends StatefulWidget {
  NeopopExample({Key? key}) : super(key: key);

  @override
  State<NeopopExample> createState() => _NeopopExampleState();
}

class _NeopopExampleState extends State<NeopopExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Neo Pop"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(200.0),
            child: Column(
              children: [
                NeoPopButton(
                  color: Colors.white,
                  onTapUp: () => HapticFeedback.vibrate(),
                  onTapDown: () => HapticFeedback.vibrate(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pay now"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                NeoPopButton(
                  color: Colors.white,
                  onTapUp: () => HapticFeedback.vibrate(),
                  onTapDown: () => HapticFeedback.vibrate(),
                  parentColor: Colors.transparent,
                  buttonPosition: Position.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Pay Now"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                NeoPopShimmer(
                  shimmerColor: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    child: Text("Hello"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
