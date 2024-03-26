import 'package:flutter/material.dart';
import 'package:islamic_app/screens/qiblah_compass.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
class Quiblah extends StatefulWidget {

  @override
  State<Quiblah> createState() => _QuiblahState();
}

class _QuiblahState extends State<Quiblah> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: _deviceSupport,
          builder: (_, AsyncSnapshot<bool?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error.toString()}"),
              );
            }
            if (snapshot.data!) {
              return QiblahCompass();
            } else {
              return const Center(
                child: Text("Your device is not supported"),
              );
            }
          },
        ),
      ),
    );

  }
}
