import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFlipCard());
}

class MyFlipCard extends StatefulWidget {
  const MyFlipCard({Key? key}) : super(key: key);

  @override
  State<MyFlipCard> createState() => _MyFlipCardState();
}

class _MyFlipCardState extends State<MyFlipCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flip Card"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Text("Front"),
                ),
                back: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                  child: Text("Back"),
                ),
              ),
              SizedBox(width: 30,),
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Text("Front"),
                ),
                back: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                  child: Text("Back"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
