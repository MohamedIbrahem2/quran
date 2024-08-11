import 'package:adhan/adhan.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import '../main.dart';

Future<void> schedulePrayerNotificationWithSound({
  required String title,
  required String body,
  required DateTime prayerTime,
}) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    'prayer_channel',
    'Prayer Times',
    sound: RawResourceAndroidNotificationSound('prayer'), // Custom sound
    importance: Importance.high,
    priority: Priority.high,
    playSound: true, // Ensure sound is enabled
  );

  const NotificationDetails platformChannelSpecifics =
  NotificationDetails(android: androidPlatformChannelSpecifics);
  // await flutterLocalNotificationsPlugin.show(
  //   0,
  //   "Test Notification",
  //   "This is a test notification",
  //   NotificationDetails(
  //     android: AndroidNotificationDetails(
  //       'test_channel',
  //       'Test Channel',
  //       importance: Importance.high,
  //       priority: Priority.high,
  //     ),
  //   ),
  // );
  final int notificationId = prayerTime.hashCode;
  await flutterLocalNotificationsPlugin.zonedSchedule(
    notificationId,
    title,
    body,
    tz.TZDateTime.from(prayerTime, tz.local),
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
    UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time, // Only match time, not date
  );
}
void schedulePrayerNotifications() async {
  await getUserLocation();
  final DateTime testTime = DateTime.now().add(Duration(seconds: 5));
  schedulePrayerNotificationWithSound(
    title: "صلاه الفجر",
    body: "حان الأن موعد اذان صلاه الفجر",
    prayerTime: getPrayerTime().fajr,
  );

  schedulePrayerNotificationWithSound(
    title: "صلاه الظهر",
    body: "حان الأن موعد اذان صلاه الظهر",
    prayerTime: getPrayerTime().dhuhr,
  );
  schedulePrayerNotificationWithSound(
    title: "صلاه العصر",
    body: "حان الأن موعد اذان صلاه العصر",
    prayerTime: getPrayerTime().asr,
  );
  schedulePrayerNotificationWithSound(
    title: "صلاه المغرب",
    body: "حان الأن موعد اذان صلاه المغرب",
    prayerTime: getPrayerTime().maghrib,
  );
  schedulePrayerNotificationWithSound(
    title: "صلاه العشاء",
    body: "حان الأن موعد اذان صلاه العشاء",
    prayerTime: getPrayerTime().isha,
  );

  // Schedule notifications for other prayers similarly...
}
int num = 0;
PrayerTimes getPrayerTime() {
  final myCoordinates = Coordinates(lat,lang);

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
double lat = 0,lang = 0;
Future<Position> locateUser() async {
  return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}
getUserLocation() async {
  Position currentLocation = await locateUser();
    LatLng _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    lat = _center.latitude;
    lang = _center.longitude;


}
