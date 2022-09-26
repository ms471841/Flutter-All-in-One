import 'package:flutter/material.dart';

void main() {
  runApp(const TextHome());
}

class TextHome extends StatelessWidget {
  const TextHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextOverflow"),
        ),
        body: Column(
          children: [
            Text("Ellipis Example"),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "This is the example of TextOverflow ellipis, In the end there are the dots",
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Divider(),
            Text("fade Example"),
            Container(
              width: 500,
              height: 50,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "This is the example of TextOverflow fade, In the end text is faded",
                overflow: TextOverflow.fade,
              ),
            ),
            Divider(),
            Text("clip Example"),
            Container(
              width: 500,
              height: 55,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "This is the example of TextOverflow clip, This will clip the text",
                overflow: TextOverflow.clip,
              ),
            ),
            Divider(),
            Text("visible Example"),
            Container(
              width: 500,
              height: 50,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "This is the example of TextOverflow visible, Text is visible",
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

