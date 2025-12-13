import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart' as intl hide TextDirection;
import 'package:kf_drawer/kf_drawer.dart';
import 'package:quran/Model/Variable_declarations.dart';

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

  /// NEW — detailed location
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
      List<Placemark> placeMarks =
      await placemarkFromCoordinates(widget.lat, widget.lang);

      if (placeMarks.isNotEmpty) {
        final pm = placeMarks[0];

        country = pm.country ?? "";
        adminArea = pm.administrativeArea ?? "";
        city = pm.locality ?? "";
        district = pm.subLocality ?? "";
      }

      await _fetchPrayerTimes(widget.lat, widget.lang);
      _startCountdown();
    } catch (e) {
      debugPrint("Error initializing prayer times: $e");
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  Future<void> _fetchPrayerTimes(double lat, double lng) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    final url = Uri.parse(
      'https://api.aladhan.com/v1/timings/$timestamp'
          '?latitude=$lat&longitude=$lng&method=5',
    );

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception("Failed prayer API call");
    }

    final jsonBody = jsonDecode(response.body);

    if (jsonBody['code'] != 200) {
      throw Exception("API returned error");
    }

    final timings = jsonBody['data']['timings'];

    DateTime _parse(String t) {
      final parts = t.split(':');
      final hour = int.parse(parts[0]);
      final min = int.parse(parts[1]);
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day, hour, min);
    }

    _prayerTimes = {
      "الفجر": _parse(timings["Fajr"]),
      "الشروق": _parse(timings["Sunrise"]),
      "الظهر": _parse(timings["Dhuhr"]),
      "العصر": _parse(timings["Asr"]),
      "المغرب": _parse(timings["Maghrib"]),
      "العشاء": _parse(timings["Isha"]),
    };

    setState(() {});
  }

  void _startCountdown() {
    if (_prayerTimes.isEmpty) return;

    final now = DateTime.now();
    final next = _getNextPrayerTime(now);

    _nextPrayer = next.name;
    _timeRemaining = next.time.difference(now);

    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      final remaining = next.time.difference(DateTime.now());
      if (remaining.isNegative) {
        _timer?.cancel();
        _startCountdown();
      } else {
        setState(() => _timeRemaining = remaining);
      }
    });
  }

  _Prayer _getNextPrayerTime(DateTime now) {
    final entries = _prayerTimes.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    for (final p in entries) {
      if (now.isBefore(p.value)) {
        return _Prayer(name: p.key, time: p.value);
      }
    }

    // Next day fajr
    return _Prayer(
      name: "الفجر",
      time: _prayerTimes["الفجر"]!.add(Duration(days: 1)),
    );
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
            ? const Center(child: CircularProgressIndicator())
            : Container(
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    ..._buildPrayerCards(),
                    SizedBox(height: 10),

                    /// LOCATION CARD (UPDATED)
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

                    SizedBox(height: height),
                  ],
                ),
              ),

              /// COUNTDOWN BOX
              Positioned(
                bottom: 30,
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
