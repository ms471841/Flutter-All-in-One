import 'package:flutter/material.dart';
//import 'package:toast/toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "network image",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Network image"),
        ),
        body: Center(
          child: TextButton(
              child: Text("click me"),
              onPressed: () {
                showToast();
              }),
        ),
      ),
    );
  }

  showToast() {
    Fluttertoast.showToast(msg: "TOP taost");
  }
}
