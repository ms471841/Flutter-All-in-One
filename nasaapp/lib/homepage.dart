import 'package:flutter/material.dart';
import 'package:nasaapp/service.dart';

class OppyHome extends StatefulWidget {
  OppyHome({Key? key}) : super(key: key);

  @override
  State<OppyHome> createState() => _OppyHomeState();
}

class _OppyHomeState extends State<OppyHome> {
  dynamic response;
  @override
  void initState() {
    response = fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mars Mission"),
      ),
      body: FutureBuilder(
        future: response,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var content = snapshot.data[index];
                return Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: EdgeInsets.all(10),
                  child: Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Column(
                          children: [Text(content['id'].toString())],
                        ),
                        Column(),
                      ],
                    ),
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
      ),
    );
  }
}
