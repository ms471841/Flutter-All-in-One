import 'package:flutter/material.dart';
import 'package:nasaapp/homepage.dart';

void main() {
  runApp(Oppy());
}

class Oppy extends StatefulWidget {
  Oppy({Key? key}) : super(key: key);

  @override
  State<Oppy> createState() => _OppyState();
}

class _OppyState extends State<Oppy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: OppyHome(),
    );
  }
}
