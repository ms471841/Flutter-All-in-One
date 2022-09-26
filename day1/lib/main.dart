import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() {
  runApp(SimpleLeftBackDrop());
}

class SimpleLeftBackDrop extends StatefulWidget {
  const SimpleLeftBackDrop({Key? key}) : super(key: key);

  @override
  _SimpleLeftBackDropState createState() => _SimpleLeftBackDropState();
}

class _SimpleLeftBackDropState extends State<SimpleLeftBackDrop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Right BackDrop",
      debugShowCheckedModeBanner: false,
      home: BackdropScaffold(
        appBar: AppBar(
          title: Text("Right Backdrop"),
          actions: [
            BackdropToggleButton(
              icon: AnimatedIcons.close_menu,
            )
          ],
        ),
        backLayer: Center(
          child: Text("BackLayer"),
        ),
        frontLayer: Center(
          child: Text("FrontLayer"),
        ),
      ),
    );
  }
}
