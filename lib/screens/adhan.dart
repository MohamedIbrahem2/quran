import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
class Adhan extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            PrayerTime();
          },
          child: Text("button"),
        ),
      ),
    );
  }
}



void PrayerTime() {
  print('Egypt Prayer Times');
  final myCoordinates =
  Coordinates(30.033333, 31.233334); // Replace with your own location lat, lng.
  final params = CalculationMethod.egyptian.getParameters();
  params.madhab = Madhab.shafi;
  final prayerTimes = PrayerTimes.today(myCoordinates, params);

  print(
      "---Today's Prayer Times in Your Local Timezone(${prayerTimes.fajr.timeZoneName})---");
  print(DateFormat.jm().format(prayerTimes.fajr));
  print(DateFormat.jm().format(prayerTimes.sunrise));
  print(DateFormat.jm().format(prayerTimes.dhuhr));
  print(DateFormat.jm().format(prayerTimes.asr));
  print(DateFormat.jm().format(prayerTimes.maghrib));
  print(DateFormat.jm().format(prayerTimes.isha));

  print('---');
}