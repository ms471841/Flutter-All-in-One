import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatefulWidget {
  SampleApp({Key? key}) : super(key: key);

  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sampleApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
