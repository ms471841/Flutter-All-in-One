import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserAccountsDrawerHeader(
        accountEmail: Text("Manish123@gmail.com"),
        accountName: Text("Mainsh saini"),
      ),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
    );
  }
}
