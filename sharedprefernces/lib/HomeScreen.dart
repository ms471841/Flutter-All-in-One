import 'package:flutter/material.dart';
import 'package:sharedprefernces/share.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;
  int value1 = 0;

  void _increment() {
    setState(() {
      value++;
      Helper.saveUserData(value);
    });
  }

  getUserValue() async {
    value1 = await Helper.getUserData();
  }

  @override
  void initState() {
    getUserValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks for Geeks"),
      ),
      body: Center(
        child: Text(
            "If you press floating action button , it Will Incremeny by 1 : $value1"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
