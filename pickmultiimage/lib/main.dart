import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(const MutipleImagePickerRun());

class MutipleImagePickerRun extends StatefulWidget {
  const MutipleImagePickerRun({Key? key}) : super(key: key);

  @override
  _MutipleImagePickerState createState() => _MutipleImagePickerState();
}

class _MutipleImagePickerState extends State<MutipleImagePickerRun> {
  List<Asset> images = <Asset>[];

  Future<bool> checkAndRequestCameraPermissions() async {
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.photos);

    if (permission != PermissionStatus.granted) {
      Map<PermissionGroup, PermissionStatus> permissions =
          await PermissionHandler()
              .requestPermissions([PermissionGroup.photos]);
      return permissions[PermissionGroup.camera] == PermissionStatus.granted;
    } else {
      return true;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];

    if (await checkAndRequestCameraPermissions()) {
      try {
        resultList = await MultiImagePicker.pickImages(
          maxImages: 300,
          enableCamera: true,
          selectedAssets: images,
          cupertinoOptions: const CupertinoOptions(takePhotoIcon: "chat"),
          materialOptions: const MaterialOptions(
            actionBarColor: "blue",
            actionBarTitle: "Select Images",
            allViewTitle: "All Photos",
            useDetailsView: false,
            selectCircleStrokeColor: "black",
          ),
        );
      } on Exception catch (e) {
        print(e);
      }

      if (!mounted) return;

      setState(() {
        images = resultList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Multiple Image Picker'), actions: [
          MaterialButton(
            child: const Text("Pick Images"),
            onPressed: loadAssets,
          ),
        ]),
        body: buildGridView(),
      ),
    );
  }
}
