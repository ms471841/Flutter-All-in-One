import 'package:flutter/material.dart';
import 'package:sample/Myhome.dart';

void main() {
  runApp(VoidProgrammer());
}

class VoidProgrammer extends StatefulWidget {
  VoidProgrammer({Key? key}) : super(key: key);

  @override
  _VoidProgrammerState createState() => _VoidProgrammerState();
}

class _VoidProgrammerState extends State<VoidProgrammer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "VoidProgrammer",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHome(),
    );
  }
}
