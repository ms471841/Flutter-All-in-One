import 'package:flutter/material.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatefulWidget {
  @override
  _Whatsappstate createState() => new _Whatsappstate();
}

class _Whatsappstate extends State<Whatsapp> {
  int indexTab = 1;

  Widget simplepop() {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("first"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("second"),
        ),
      ],
    );
  }

  Widget _setactionbutton(int value) {
    if (value == 0) {
      return Container();
    } else if (value == 1) {
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.teal,
      );
    } else if (value == 2) {
      return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {},
          heroTag: null,
          backgroundColor: Colors.black87,
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          child: Icon(Icons.camera_alt),
          onPressed: () {},
          heroTag: null,
          backgroundColor: Colors.teal,
        )
      ]);
    } else {
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
        backgroundColor: Colors.teal,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.cyan,
              title: Text("WhatsApp"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    simplepop();
                  },
                ),
              ],
              bottom: TabBar(
                onTap: (index) {
                  setState(() {
                    indexTab = index;
                  });
                },
                tabs: <Widget>[
                  Tab(
                    child: IconButton(
                      icon: Icon(Icons.camera),
                      onPressed: () {},
                    ),
                  ),
                  Tab(
                    child: Text("CHATS"),
                  ),
                  Tab(
                    child: Text("STATUS"),
                  ),
                  Tab(
                    child: Text("CALLS"),
                  ),
                ],
              ),
            ),
            floatingActionButton: _setactionbutton(indexTab),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Text("page1"),
                ),
                Center(
                  child: Text("page2"),
                ),
                Center(
                  child: Text("page3"),
                ),
                Center(
                  child: Text("page4"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
