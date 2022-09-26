import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: HiddenBottomAppBar(),
    ));

class HiddenBottomAppBar extends StatefulWidget {
  const HiddenBottomAppBar({Key? key}) : super(key: key);

  @override
  HiddenBottomAppBarState createState() => new HiddenBottomAppBarState();
}

class HiddenBottomAppBarState extends State<HiddenBottomAppBar> {
  late ScrollController _HideBottomAppBarController;
  var _isVisible;

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _HideBottomAppBarController = new ScrollController();
    _HideBottomAppBarController.addListener(() {
      if (_HideBottomAppBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_HideBottomAppBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          controller: _HideBottomAppBarController,
          children: [
            Text("Scroll Down Will Hide The BottomAppBar!"),
            Text("Scroll Up   Will Show The BottomAppBar!"),
            Divider(),
            Image.asset("assets/s1.png"),
            Divider(),
            Image.asset("assets/s2.png"),
            Divider(),
            Image.asset("assets/S4.png"),
          ],
        ),
        bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 50),
          height: _isVisible ? 60.0 : 0.0,
          child: _isVisible
              ? AnimatedContainer(
                  duration: Duration(milliseconds: 50),
                  height: _isVisible ? 60.0 : 0.0,
                  child: _isVisible
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Bottom AppBar"),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                        ),
                )
              : Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                ),
        ),
      ),
    );
  }
}
