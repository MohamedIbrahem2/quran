import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QiblahGet extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Color(0x55313131),
        title: Text("Qiblah", style: TextStyle(fontSize: 22,color: Colors.white,),),
        centerTitle: true,
        leading: IconButton(onPressed: ()=>Navigator.pop(context), icon:Icon(Icons.arrow_back , color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: QiblahCompassWidget(),
      )
    );
  }
}


class QiblahCompassWidget extends StatelessWidget {
  final _compassSvg = SvgPicture.asset('images/compass.svg');
  final _needleSvg = SvgPicture.asset(
    'images/needle.svg',
    fit: BoxFit.contain,
    height: 300,
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();

        final qiblahDirection = snapshot.data;

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: ((qiblahDirection.direction ?? 0) * (pi / 180) * -1),
              child: _compassSvg,
            ),
            Transform.rotate(
              angle: ((qiblahDirection.qiblah ?? 0) * (pi / 180) * -1),
              alignment: Alignment.center,
              child: _needleSvg,
            ),
            Positioned(
              bottom: 8,
              child: Text("${qiblahDirection.offset.toStringAsFixed(3)}°"),
            )
          ],
        );
      },
    );
  }
}