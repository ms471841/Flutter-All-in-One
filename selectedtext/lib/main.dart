import 'package:flutter/material.dart';

void main() {
  runApp(SelectableTextRun());
}

class SelectableTextRun extends StatelessWidget {
  const SelectableTextRun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Selectable Text"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SelectableText(
            "A grasshoppeer can leap 20 times the length of its own body.\n At Birth, baby kangaroos are only about an inch \n long - no bigger than a large water bug or a queen bee ",
            style: TextStyle(color: Colors.amber),
            showCursor: true,
            toolbarOptions: ToolbarOptions(
                copy: true, cut: true, paste: true, selectAll: true),
          ),
        ),
      ),
    );
  }
}
