import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(SlideUp());
}

class SlideUp extends StatelessWidget {
  SlideUp({Key? key}) : super(key: key);
  BorderRadius radius = const BorderRadius.only(
    topLeft: Radius.circular(24),
    topRight: Radius.circular(24),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sliding Up Panel"),
        ),
        body: SlidingUpPanel(
          backdropEnabled: true,
          renderPanelSheet: false,
          panel: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 253, 253, 253),
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    color: Colors.grey,
                  ),
                ]),
            //  margin: const EdgeInsets.all(24.0),
            child: const Center(
              child: Text("This is the SlidingUpPanel when open"),
            ),
          ),
          collapsed: Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0)),
            ),
            //margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
            child: const Center(
              child: Text(
                "This is the collapsed Widget",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: const Center(
            child: Text("This is the Widget behind the sliding panel"),
          ),
        ),
      ),
    );
  }
}

Widget _floatingCollapsed() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
    ),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    child: const Center(
      child: Text(
        "This is the collapsed Widget",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget _floatingPanel() {
  return Container(
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 253, 253, 253),
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.grey,
          ),
        ]),
    margin: const EdgeInsets.all(24.0),
    child: const Center(
      child: Text("This is the SlidingUpPanel when open"),
    ),
  );
}
