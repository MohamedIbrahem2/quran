import 'dart:async';
import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart' as intl hide TextDirection;
import 'package:kf_drawer/kf_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';
import 'package:quran/Model/Variable_declarations.dart';

class Adhan extends KFDrawerContent {
  final double lat, lang;

  Adhan({required this.lat, required this.lang});

  @override
  State<Adhan> createState() => _AdhanState();
}

class _AdhanState extends State<Adhan> {
  Timer? _timer;
  Duration _timeRemaining = Duration();
  String _nextPrayer = "";
  String? country = '';
  bool isLoading = true;
  bool _isNotificationEnabled = true;

  PrayerTimes? prayerTimes;

  @override
  void initState() {
    super.initState();
    _initializePrayerTimes();
    _loadNotificationPreference();
  }

  Future<void> _initializePrayerTimes() async {
    try {
      List<Placemark> placeMarks = await placemarkFromCoordinates(widget.lat, widget.lang);
      country = placeMarks[0].country ?? '';
      final method = _getCalculationMethod(country);
      final params = method.getParameters();
      params.madhab = Madhab.shafi;

      final coordinates = Coordinates(widget.lat, widget.lang);
      prayerTimes = PrayerTimes.today(coordinates, params);

      _startCountdown();
    } catch (e) {
      print("Error initializing prayer times: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  CalculationMethod _getCalculationMethod(String? country) {
    switch (country) {
      case "Saudi Arabia":
        return CalculationMethod.umm_al_qura;
      case "Qatar":
        return CalculationMethod.qatar;
      case "United Arab Emirates":
        return CalculationMethod.dubai;
      case "Kuwait":
        return CalculationMethod.kuwait;
      default:
        return CalculationMethod.egyptian;
    }
  }

  void _startCountdown() {
    final now = DateTime.now();
    final nextPrayer = _getNextPrayerTime(now);
    if (nextPrayer != null) {
      setState(() {
        _nextPrayer = nextPrayer.name;
        _timeRemaining = nextPrayer.time.difference(now);
      });

      _timer = Timer.periodic(Duration(seconds: 1), (_) {
        final remaining = nextPrayer.time.difference(DateTime.now());
        if (remaining.isNegative) {
          _timer?.cancel();
          _startCountdown();
        } else {
          setState(() {
            _timeRemaining = remaining;
          });
        }
      });
    }
  }

  _Prayer _getNextPrayerTime(DateTime now) {
    if (prayerTimes == null) return _Prayer(name: "الفجر", time: now.add(Duration(days: 1)));

    final prayers = {
      "الفجر": prayerTimes!.fajr,
      "الظهر": prayerTimes!.dhuhr,
      "العصر": prayerTimes!.asr,
      "المغرب": prayerTimes!.maghrib,
      "العشاء": prayerTimes!.isha,
    };

    for (var entry in prayers.entries) {
      if (now.isBefore(entry.value)) {
        return _Prayer(name: entry.key, time: entry.value);
      }
    }
    // If no future prayer found, next is Fajr of the next day
    return _Prayer(name: "الفجر", time: prayers["الفجر"]!.add(Duration(days: 1)));
  }

  Future<void> _loadNotificationPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isNotificationEnabled = prefs.getBool('isNotificationEnabled') ?? true;
    });
  }

  Future<void> _saveNotificationPreference(bool isEnabled) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isNotificationEnabled', isEnabled);
  }

  Future<void> _enableNotifications() async {
    await Workmanager().registerPeriodicTask(
      "dailyPrayerNotification",
      "dailyPrayerNotificationTask",
      frequency: Duration(days: 1),
    );
  }

  Future<void> _disableNotifications() async {
    await Workmanager().cancelByUniqueName("dailyPrayerNotification");
    FlutterLocalNotificationsPlugin().cancelAll();
  }

  void _onToggle(bool value) async {
    setState(() {
      _isNotificationEnabled = value;
    });
    await _saveNotificationPreference(value);

    if (value) {
      await _enableNotifications();
    } else {
      await _disableNotifications();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: ExactAssetImage(backgroundimage),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.04),
                    ..._buildPrayerCards(),
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
                          country ?? '',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "تشغيل/ايقاف تنبيهات مواقيت الصلاه",
                          style: TextStyle(fontSize: 18),
                        ),
                        Switch(
                          value: _isNotificationEnabled,
                          onChanged: _onToggle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPrayerCards() {
    if (prayerTimes == null) return [];

    final prayers = {
      "الفجر": prayerTimes!.fajr,
      "الشروق": prayerTimes!.sunrise,
      "الظهر": prayerTimes!.dhuhr,
      "العصر": prayerTimes!.asr,
      "المغرب": prayerTimes!.maghrib,
      "العشاء": prayerTimes!.isha,
    };

    return prayers.entries
        .map((entry) => _buildCard(entry.key, intl.DateFormat.jm().format(entry.value)))
        .toList();
  }

  Widget _buildCard(String name, String time) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _Prayer {
  final String name;
  final DateTime time;

  _Prayer({required this.name, required this.time});
}
