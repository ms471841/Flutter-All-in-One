import 'package:flutter/material.dart';

void main() {
  runApp(TapCoords());
}


class TapCoords extends StatelessWidget {
  const TapCoords({Key? key}) : super(key: key);
@override
  

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tap The Body'),
        ),
        body: MyWidget()
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  double posx = 0;
  double posy = 0;
  String Txt  = "Tap Here To Start!";

  void onTapDown(BuildContext context, TapDownDetails details) {
    final RenderBox box = context.findRenderObject()as RenderBox;
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;
      Txt  ='Tapped\nX:$posx \nY:$posy';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) => onTapDown(context, details),
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Container(color: Colors.white),
        Positioned(
          child: Text(Txt),
          left: posx,
          top: posy,
        )
      ]),
    );
  }
}