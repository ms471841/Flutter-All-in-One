import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DemoApp",
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  @override
  _Myhomepagestate createState() => _Myhomepagestate();
}

class _Myhomepagestate extends State<Myhomepage> {
  int firstnum;
  int secondnum;
  String texttodisplay = "";
  String res;
  String operationtoperform;

  void btnclicked(String btnval) {
    if (btnval == "C") {
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnval == "/" ||
        btnval == "*" ||
        btnval == "-" ||
        btnval == "+") {
      firstnum = int.parse(texttodisplay);
      res = "";
      operationtoperform = btnval;
    } else if (btnval == "=") {
      secondnum = int.parse(texttodisplay);
      if (operationtoperform == "/") {
        res = (firstnum / secondnum).toString();
      }
      if (operationtoperform == "*") {
        res = (firstnum * secondnum).toString();
      }
      if (operationtoperform == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (operationtoperform == "+") {
        res = (firstnum + secondnum).toString();
      }
    } else {
      res = int.parse(texttodisplay + btnval).toString();
    }

    setState(() {
      texttodisplay = res;
    });
  }

  Widget customwidget(String cusbtn) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(20.0),
        onPressed: () => btnclicked(cusbtn),
        child: Text(
          '$cusbtn',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$texttodisplay",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                customwidget("7"),
                customwidget("8"),
                customwidget("9"),
                customwidget("/"),
              ],
            ), //row
            Row(
              children: <Widget>[
                customwidget("4"),
                customwidget("5"),
                customwidget("6"),
                customwidget("*"),
              ],
            ), //row
            Row(
              children: <Widget>[
                customwidget("1"),
                customwidget("2"),
                customwidget("3"),
                customwidget("-"),
              ],
            ), //row
            Row(
              children: <Widget>[
                customwidget("C"),
                customwidget("0"),
                customwidget("="),
                customwidget("+"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
