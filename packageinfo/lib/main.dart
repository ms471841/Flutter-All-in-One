import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PackageInfoPlusRun());
}

class PackageInfoPlusRun extends StatefulWidget {
  PackageInfoPlusRun({Key? key}) : super(key: key);

  @override
  State<PackageInfoPlusRun> createState() => _PackageInfoPlusRunState();
}

class _PackageInfoPlusRunState extends State<PackageInfoPlusRun> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Widget _infoTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle.isEmpty ? 'Not set' : subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Package Info Plus",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Package Info Plus"),
        ),
        body: Center(
          child: Column(
            children: [
              _infoTile('App name', _packageInfo.appName),
              _infoTile('Package name', _packageInfo.packageName),
              _infoTile('App version', _packageInfo.version),
              _infoTile('Build number', _packageInfo.buildNumber),
              _infoTile('Build signature', _packageInfo.buildSignature),
            ],
          ),
        ),
      ),
    );
  }
}
