import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApi extends StatefulWidget {
  MyApi({Key? key}) : super(key: key);

  @override
  _MyApiState createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  dynamic response;

  Future<List<dynamic>> fetchUsers() async {
    var result =
        await http.get(Uri.parse("https://randomuser.me/api/?results=20"));
    return jsonDecode(result.body)['results'];
  }

  myApiWidget() {
    return FutureBuilder(
      future: response,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(snapshot.data[index]['name']['title'] +
                          " " +
                          snapshot.data[index]['name']['first'] +
                          " " +
                          snapshot.data[index]['name']['last']),
                      trailing:
                          Text(snapshot.data[index]['dob']['age'].toString()),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          snapshot.data[index]['picture']['large'],
                        ),
                      ),
                      subtitle: Text(snapshot.data[index]['email']),
                    )
                  ],
                ),
              );
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
  void initState() {
    response = fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks for Geeks"),
        backgroundColor: Colors.green,
      ),
      body: myApiWidget(),
    );
  }
}
