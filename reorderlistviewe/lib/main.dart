import 'package:flutter/material.dart';

void main()
{
  runApp(ReorderLisst());
}
class ReorderLisst extends StatefulWidget {
 

  ReorderLisst({Key? key}) : super(key: key);
  @override
  _ReorderLisstState createState() => _ReorderLisstState();
}

class _ReorderLisstState extends State<ReorderLisst> {
   List<String> item = [
    "GeeksforGeeks",
    "Flutter",
    "Developer",
    "Android",
    "Programming",
    "CplusPlus",
    "Python",
    "javascript"
  ];
  

  void sorting() {
    setState(() {
    item.sort();
    });
  }
void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = item.removeAt(oldindex);
         item.insert(newindex, items);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
      
        title: Text(
          "Reorderable ListView",
         
        ),
        
      ),
      body: ReorderableListView(
        onReorder: reorderData,
        children: [
          for (final items in item)
            Card(
              
              color: Colors.white,
              key: ValueKey(items),
              elevation: 2,
              child: ListTile(
                
                title: Text(items),
                
              ),
            ),
        ],
        
      ),
    )
    );

  }
}
