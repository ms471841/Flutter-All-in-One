import 'package:flutter/material.dart';

void main() => runApp(HiddenTopAppBar());

class HiddenTopAppBar extends StatefulWidget {
  @override
  HiddenTopAppBarState createState() => HiddenTopAppBarState();
}

class HiddenTopAppBarState extends State<HiddenTopAppBar> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: Icon(Icons.wallpaper),
                title:
                    Container(color: Colors.blue, child: Text("Hidden AppBar")),
                elevation: 10.0,
                automaticallyImplyLeading: false,
                expandedHeight: 50,
                floating: true,
                snap: true,
              )
            ];
          },
          body: ListView(
            children: <Widget>[
              Text("Scroll Down To Hide The AppBar!"),
              Divider(),
              Image.asset("Images/S1.png"),
              Divider(),
              Image.asset("Images/S2.png"),
              Divider(),
              Image.asset("Images/S3.png"),
              Divider(),
              Image.asset("Images/S4.png"),
            ],
          ),
        ),
      ),
    );
  }
}
