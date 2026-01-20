import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart' as intl hide TextDirection;
import 'package:kf_drawer/kf_drawer.dart';
import 'package:quran/Model/Variable_declarations.dart';
import 'package:adhan/adhan.dart';

class Adhan extends KFDrawerContent {
  final double lat;
  final double lang;

  Adhan({required this.lat, required this.lang});

  @override
  State<Adhan> createState() => _AdhanState();
}

class _AdhanState extends State<Adhan> {
  Timer? _timer;
  Duration _timeRemaining = Duration.zero;
  String _nextPrayer = "";

  String country = "";
  String adminArea = "";
  String city = "";
  String district = "";

  bool isLoading = true;

  Map<String, DateTime> _prayerTimes = {};

  @override
  void initState() {
    super.initState();
    _initializeWithPassedLocation();
  }

  Future<void> _initializeWithPassedLocation() async {
    try {
      // Get human-readable location
      List<Placemark> placeMarks =
      await placemarkFromCoordinates(widget.lat, widget.lang);

      if (placeMarks.isNotEmpty) {
        final pm = placeMarks[0];
        country = pm.country ?? "";
        adminArea = pm.administrativeArea ?? "";
        city = pm.locality ?? "";
        district = pm.subLocality ?? "";
      }

      // Calculate prayer times locally (no API)
      await _calculatePrayerTimes(widget.lat, widget.lang);
    } catch (e) {
      debugPrint("Error initializing prayer times: $e");
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  /// ---- LOCAL PRAYER CALCULATION USING `adhan` ----
  Future<void> _calculatePrayerTimes(double lat, double lng) async {
    final coordinates = Coordinates(lat, lng);

    // Choose your preferred calculation method
    // Examples: CalculationMethod.egyptian / muslimWorldLeague / karachi ...
    final params = CalculationMethod.egyptian.getParameters()
      ..madhab = Madhab.shafi; // or Madhab.hanafi

    final prayerTimes = PrayerTimes.today(coordinates, params);

    setState(() {
      _prayerTimes = {
        "الفجر": prayerTimes.fajr,
        "الشروق": prayerTimes.sunrise,
        "الظهر": prayerTimes.dhuhr,
        "العصر": prayerTimes.asr,
        "المغرب": prayerTimes.maghrib,
        "العشاء": prayerTimes.isha,
      };
    });

    _prayerTimes.forEach((k, v) {
      debugPrint("$k => $v");
    });

    _startCountdown();
  }

  /// ---- COUNTDOWN LOGIC ----
  void _startCountdown() {
    if (_prayerTimes.isEmpty) return;

    final now = DateTime.now();
    final next = _getNextPrayerTime(now);

    _nextPrayer = next.name;
    _timeRemaining = next.time.difference(now);

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final current = DateTime.now();
      final remaining = next.time.difference(current);

      if (remaining.isNegative) {
        _timer?.cancel();
        _startCountdown(); // move to next prayer
      } else {
        if (mounted) {
          setState(() {
            _timeRemaining = remaining;
          });
        }
      }
    });
  }

  _Prayer _getNextPrayerTime(DateTime now) {
    final entries = _prayerTimes.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    for (final p in entries) {
      if (p.value.isAfter(now)) {
        return _Prayer(name: p.key, time: p.value);
      }
    }

    // All prayers passed → next Fajr (tomorrow)
    final tomorrowFajr = _prayerTimes["الفجر"]!.add(const Duration(days: 1));
    return _Prayer(name: "الفجر", time: tomorrowFajr);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  /// ---- UI ----
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(backgroundimage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.55),
            BlendMode.darken,
          ),
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: isLoading
              ? const Center(child: CircularProgressIndicator())
              : Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    ..._buildPrayerCards(),
                    const SizedBox(height: 10),

                    // Location card
                    Container(
                      width: width * 0.9,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "$country - $adminArea - $city - $district",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                            ),
                          ),
                          const Text(
                            "موقعك الحالي:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 150),
                  ],
                ),
              ),

              // Countdown box
              Positioned(
                bottom: 0,
                left: width * 0.1,
                right: width * 0.1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "الوقت المتبقي لصلاة $_nextPrayer",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _formatDuration(_timeRemaining),
                        style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
    final formatter = intl.DateFormat.jm();

    return _prayerTimes.entries
        .map(
          (entry) => Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: _buildCard(
          entry.key,
          formatter.format(entry.value),
        ),
      ),
    )
        .toList();
  }

  Widget _buildCard(String name, String time) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration d) {
    String h = d.inHours.toString().padLeft(2, '0');
    String m = (d.inMinutes % 60).toString().padLeft(2, '0');
    String s = (d.inSeconds % 60).toString().padLeft(2, '0');
    return "$h:$m:$s";
  }
}

class _Prayer {
  final String name;
  final DateTime time;

  _Prayer({required this.name, required this.time});
}
