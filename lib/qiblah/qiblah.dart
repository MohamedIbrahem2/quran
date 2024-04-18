import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:quran/qiblah/qiblah_compass.dart';
import 'package:quran/qiblah/qiblah_maps.dart';
import 'loading_indicator.dart';

class qiblah extends StatefulWidget {
  @override
  _qiblahState createState() => _qiblahState();
}

class _qiblahState extends State<qiblah> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: FutureBuilder(
          future: _deviceSupport,
          builder: (_, AsyncSnapshot<bool?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) return LoadingIndicator();
            if (snapshot.hasError)
              return Center(
                child: Text("Error: ${snapshot.error.toString()}"),
              );

            if (snapshot.data!)
              return QiblahCompass();
            else
              return QiblahMaps();
          },
        ),
      );
  }
}
