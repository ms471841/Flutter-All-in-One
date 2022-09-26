import 'package:flutter/material.dart';
import 'package:sparrow_camera/sparrow_camera.dart';

void main() {
  runApp(MyCam());
}

class MyCam extends StatefulWidget {
  const MyCam({super.key});

  @override
  State<MyCam> createState() => _MyCamState();
}

class _MyCamState extends State<MyCam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparrow Camera',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sparrow Camera'),
        ),
        body: SparrowCamera(
        onFile: (file) => print(file),
        maxCount: 6,
        maxRecordingTime: 20,
        onFile: (File file) {
            print("filePath=${file.path}");
          },
        onMessage: (message) {
            print("message=$message");
          },
        onPreview: (file) {
            print("file=${file?.path}");
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => SparrowCamera(
                  onFile: (file) {
                    photos.add(file);
                    //When take foto you should close camera
                    Navigator.pop(context);
                    setState(() {});
                  },
                )))
        },
        child: Icon(Icons.camera_alt),
      ),
      ),
    );
  }
}
