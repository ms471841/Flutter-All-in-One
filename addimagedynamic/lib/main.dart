import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(A4Run());

class A4Run extends StatefulWidget {
  A4Run({Key? key}) : super(key: key);

  @override
  A4RunState createState() => A4RunState();
}

class A4RunState extends State<A4Run> {
  List imgList = [
    Image.asset('Images/S1.png'),
    Image.asset('Images/S2.png'),
    Image.asset('Images/S3.png'),
    Image.asset('Images/S4.png'),
  ];

  void AddRandomImage() {
    var RandImgIndex = Random().nextInt(3);

    if (RandImgIndex == 0) {
      imgList.add(Image.asset('Images/S1.png'));
    } else if (RandImgIndex == 1) {
      imgList.add(Image.asset('Images/S2.png'));
    } else {
      imgList.add(Image.asset('Images/S3.png'));
    }
  }

  @override
  Widget build(BuildContext context) {
    var ImgCount = imgList.length;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.image),
          title: Text("Dynamic Add Image List"),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(children: [
                Text("Image Count:$ImgCount"),
                SizedBox(width: 45),
                OutlinedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("Add Image"),
                  onPressed: () {
                    setState(() {
                      AddRandomImage();
                    });
                  },
                )
              ]),
              for (var item in imgList)
                Center(
                  child: Container(width: 500, height: 350, child: item),
                )
            ],
          ),
        ),
      ),
    );
  }
}
