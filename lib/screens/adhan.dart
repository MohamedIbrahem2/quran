import 'dart:async';
import 'package:adhan/adhan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:kf_drawer/kf_drawer.dart';
import '../Model/Functions.dart';
import '../Model/UserSimplePreferences.dart';
import '../Model/Variable_declarations.dart';
import 'package:intl/intl.dart' as intl;

class Adhan extends KFDrawerContent {
  final double lat, lang;

  Adhan({required this.lat, required this.lang});

  @override
  State<Adhan> createState() => _Home_PageState();
}

class _Home_PageState extends State<Adhan> {
  Timer? _timer;
  Duration _timeRemaining = Duration();
  String _nextPrayer = "";
  String? country = '';
  int num = 0;
  TimeOfDay timeOfDay = TimeOfDay.now();
  late Timer timer;
  bool isLoading = true;
  String? _error;
  Future<void> getUserCountry() async {
    try {
      List<Placemark> placeMark =
      await placemarkFromCoordinates(widget.lat, widget.lang);
      print(placeMark[0].country);
      country = placeMark[0].country;
      setState(() {
      if (country == "Egyptian") {
        num = 1;
        country = 'مصر';
      } else if (country == "Saudi Arabia") {
        country = 'السعوديه';
        num = 2;
      } else if (country == "Qatar") {
        country = 'قطر';
        num = 3;
      } else if (country == "United Arab Emirates") {
        country = 'الأمارات';
        num = 4;
      } else if (country == "Kuwait") {
        country = 'الكويت';
        num = 5;
      }
        isLoading = false;
      });
    }catch (e) {
      setState(() {
        _error = e.toString();
        isLoading = false;
      });
    }

  }

  void _startCountdown() {
    DateTime now = DateTime.now();
    DateTime? nextPrayerTime;

    if (now.isBefore(getPrayerTime().fajr)) {
      nextPrayerTime = getPrayerTime().fajr;
      _nextPrayer = "الفجر";
    } else if (now.isBefore(getPrayerTime().dhuhr)) {
      nextPrayerTime = getPrayerTime().dhuhr;
      _nextPrayer = "الظهر";
    } else if (now.isBefore(getPrayerTime().asr)) {
      nextPrayerTime = getPrayerTime().asr;
      _nextPrayer = "العصر";
    } else if (now.isBefore(getPrayerTime().maghrib)) {
      nextPrayerTime = getPrayerTime().maghrib;
      _nextPrayer = "المغرب";
    } else if (now.isBefore(getPrayerTime().isha)) {
      nextPrayerTime = getPrayerTime().isha;
      _nextPrayer = "العشاء";
    } else {
      nextPrayerTime = getPrayerTime().fajr.add(const Duration(days: 1));
      _nextPrayer = "الفجر";
    }
    // Check if the adjusted time is still in the future
    if (now.isAfter(nextPrayerTime)) {
      // If the adjusted time has passed, skip to the next prayer
      _skipToNextPrayer(now);
    } else {
      _setTimer(nextPrayerTime, now);
    }
  }

  void _skipToNextPrayer(DateTime now) {
    // Loop through prayers and find the first one that's in the future
    DateTime? nextPrayerTime;

    if (now.isBefore(getPrayerTime().dhuhr)) {
      nextPrayerTime = getPrayerTime().dhuhr;
      _nextPrayer = "الظهر";
    } else if (now.isBefore(getPrayerTime().asr)) {
      nextPrayerTime = getPrayerTime().asr;
      _nextPrayer = "العصر";
    } else if (now.isBefore(getPrayerTime().maghrib)) {
      nextPrayerTime = getPrayerTime().maghrib;
      _nextPrayer = "المغرب";
    } else if (now.isBefore(getPrayerTime().isha)) {
      nextPrayerTime = getPrayerTime().isha;
      _nextPrayer = "العشاء";
    } else {
      nextPrayerTime = getPrayerTime().fajr.add(Duration(days: 1));
      _nextPrayer = "الفجر";
    }

    _setTimer(nextPrayerTime, now);
  }

  void _setTimer(DateTime nextPrayerTime, DateTime now) {
    setState(() {
      _timeRemaining = nextPrayerTime.difference(now);
    });

    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _timeRemaining = nextPrayerTime.difference(DateTime.now());
        if (_timeRemaining.isNegative) {
          _timer!.cancel();
          _startCountdown();
        }
      });
    });
  }

  initState() {
    super.initState();
     getUserCountry();
    _startCountdown();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: isLoading  ? Center(child: CircularProgressIndicator())
            : _error != null ? Text('خطأ: $_error') :
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: new ExactAssetImage(backgroundimage),
              colorFilter: new ColorFilter.mode(
                  background_color, BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.040,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.007,
                                horizontal: width * 0.009),
                            child: Column(
                              children: [
                                card(
                                    "الفجر",
                                    intl.DateFormat.jm()
                                        .format(getPrayerTime().fajr)),
                                card(
                                    "الشروق",
                                    intl.DateFormat.jm().format(
                                        getPrayerTime().sunrise)),
                                card(
                                    "الظهر",
                                    intl.DateFormat.jm()
                                        .format(getPrayerTime().dhuhr)),
                                card(
                                    "العصر",
                                    intl.DateFormat.jm()
                                        .format(getPrayerTime().asr)),
                                card(
                                    "المغرب",
                                    intl.DateFormat.jm().format(
                                        getPrayerTime().maghrib)),
                                card(
                                    "العشاء",
                                    intl.DateFormat.jm()
                                        .format(getPrayerTime().isha)),
                                Card(
                                  color: Colors.black,
                                  elevation: 5,
                                  child: ListTile(
                                    trailing: Text(
                                      "موقعك الحالي هو :",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    title: Text(
                                      country!,
                                      style: TextStyle(
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 100,
                left: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'الأذان القادم صلاه $_nextPrayer',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      '${_timeRemaining.inHours.remainder(24).toString().padLeft(2, '0')}:${_timeRemaining.inMinutes.remainder(60).toString().padLeft(2, '0')}:${_timeRemaining.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget card(name, time) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  PrayerTimes getPrayerTime() {
    final myCoordinates = Coordinates(widget.lat, widget.lang);

    var param;
    switch (num) {
      case 1:
        param = CalculationMethod.egyptian.getParameters();
        break;
      case 2:
        param = CalculationMethod.umm_al_qura.getParameters();
        break;
      case 3:
        param = CalculationMethod.qatar.getParameters();
        break;
      case 4:
        param = CalculationMethod.dubai.getParameters();
        break;
      case 5:
        param = CalculationMethod.kuwait.getParameters();
        break;
      default:
        param = CalculationMethod.egyptian.getParameters();
    }
    final params = param;
    params.madhab = Madhab.shafi;
    final prayerTimes = PrayerTimes.today(myCoordinates, params);
    return prayerTimes;
  }
}
