
import 'package:flutter/material.dart';

class ProfileUI extends StatefulWidget {
  ProfileUI({Key? key}) : super(key: key);

  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  final String constimage =
      "https://www.sorcererking.com/images/metarealm/avatarUnknown.jpg";

  TextEditingController suggestioneditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Ink(
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black12,
                      Colors.black26,
                      Colors.black38,
                    ]))),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white, width: 6),
                            ),
                            child: Hero(
                              tag: 'image',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.network(
                                    "http://www.newdesignfile.com/postpic/2011/03/unknown-person-with-question-mark_305280.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Manish saini",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      // Card(
                      //   elevation: 10,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child: Container(
                      //     height: 80,
                      //     width: 300,
                      //     child: Row(
                      //       children: [
                      //         Padding(
                      //           padding: EdgeInsets.symmetric(
                      //             vertical: 20,
                      //             horizontal: 15,
                      //           ),
                      //         ),
                      //         Text("Total Friends",
                      //             style: TextStyle(fontSize: 20)),
                      //         SizedBox(
                      //           width: 50,
                      //         ),
                      //         Text(
                      //           "dont",
                      //           style:
                      //               TextStyle(fontSize: 20, color: Colors.cyan),
                      //         ),
                      //         SizedBox(
                      //           width: 20,
                      //         ),
                      //         Text("😀")
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          title: Text(
                            "E-Mail",
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.email,
                            color: Colors.black12,
                          ),
                          subtitle: Text("Student"),
                          trailing: Icon(Icons.expand_less),
                          tileColor: Colors.black12,
                        ),
                        ListTile(
                          title: Text(
                            "Phone Number",
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.phone_android,
                            color: Colors.cyan,
                          ),
                          subtitle: Text("Number not found"),
                          trailing: Icon(Icons.expand_less),
                          tileColor: Colors.cyan[50],
                        ),
                        ListTile(
                          title: Text(
                            "About",
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.people,
                            color: Colors.cyan,
                          ),
                          subtitle: Text("You are "),
                          trailing: Icon(Icons.expand_less),
                          tileColor: Colors.cyan[50],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        //  Text("Powered by Manish saini")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
