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
            return [
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
            children: [
              Text("Scroll Down To Hide The AppBar!"),
              Divider(),
//Image.asset("Images/S1.jpg"),
              Image.network("https://images.alphacoders.com/395/39541.jpg"),
              Divider(),
              //    Image.asset("Images/S2.jpg"),
              Image.network("https://images.alphacoders.com/395/39541.jpg"),
              Divider(),
              Image.network("https://images.alphacoders.com/395/39541.jpg"),
              //    Image.asset("Images/S3.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
