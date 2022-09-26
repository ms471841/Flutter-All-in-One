import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "x",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Void"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hoverColor: Colors.tealAccent,
                hintText: "enter name",
                labelText: "Name",
                icon: Icon(Icons.ac_unit),
                helperText: "with surname",
                helperMaxLines: 3,
                fillColor: Colors.red,
                labelStyle: TextStyle(color: Colors.teal),
                filled: true,
                alignLabelWithHint: false,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.teal,
              height: 10,
              thickness: 20,
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                alignLabelWithHint: false,
                hintText: "password",
                labelText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 5,
              color: Colors.teal,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  prefix: Text("91+"),
                  labelText: "Mobile Number",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.teal,
            ),
            Row(
              children: [
                SpinKitPumpingHeart(
                  color: Colors.red,
                ),
                SpinKitWave(
                  color: Colors.yellow,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
