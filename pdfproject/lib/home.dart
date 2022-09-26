import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pdfproject/course_ui.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  dynamic response;

  Future<List<dynamic>> fetchUsers() async {
    // String result =
    // await http.get(Uri.parse(""));
    // await rootBundle.loadString("assest/my.json");
    String result =
        await DefaultAssetBundle.of(context).loadString("assest/my.json");
    return jsonDecode(result)["courses"];
  }

  mywidget() {
    return FutureBuilder(
      future: response,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemTile(index, snapshot.data[index]['id']);
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  @override
  void initState() {
    super.initState();
    response = fetchUsers();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Void Programmer"),
      ),
      body: mywidget(),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;
  final String course;
  const ItemTile(this.itemNo, this.course);

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: color.withOpacity(0.3),
        onTap: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Course()),
  );
        },
        leading: Container(
          width: 50,
          height: 30,
          color: color.withOpacity(0.5),
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          '$course',
          key: Key('text_$itemNo'),
        ),
      ),
    );
  }
}
