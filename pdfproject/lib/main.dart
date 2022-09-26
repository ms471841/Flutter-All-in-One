import 'package:flutter/material.dart';
import 'package:pdfproject/home.dart';

void main() {
  runApp(DownloadFile());
}

class DownloadFile extends StatefulWidget {
  DownloadFile({Key? key}) : super(key: key);

  @override
  _DownloadFileState createState() => _DownloadFileState();
}

class _DownloadFileState extends State<DownloadFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
