import 'package:flutter/material.dart';

void main() {
  runApp(SimpleAppBarPopupMenuButton());
}

class SimpleAppBarPopupMenuButton extends StatelessWidget {
  const SimpleAppBarPopupMenuButton({Key? key}) : super(key: key);
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert!!"),
          content: Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Popup Menu Button',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Popup Menu Button'),
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Get The App")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(
                        width: 10,
                      ),
                      Text("About")
                    ],
                  ),
                ),
              ],
              offset: Offset(0, 100),
              color: Colors.grey,
              elevation: 2,
              // onSelected: (value) {
              //   if (value == 1) {
              //     //_showDialog(context);
              //     _showToast(context);
              //   } else if (value == 2) {
              //     _showToast(context);

              //     //_showDialog(context);
              //   }
              // },
            ),
          ],
        ),
        body: Center(
          child: Text("Press the 3 Point Button Up!"),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
