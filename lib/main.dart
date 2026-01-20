import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:quran/screens/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'Model/notifcation_prayer.dart';
import 'screens/HomeView.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:workmanager/workmanager.dart';
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    // Call the method to schedule notifications
    schedulePrayerNotifications();
    return Future.value(true);
  });
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  // Workmanager().initialize(
  //   callbackDispatcher,
  //   isInDebugMode: false,  // Set to false for production
  // );
  //
  // // Schedule the task to run daily
  // Workmanager().registerPeriodicTask(
  //   "dailyPrayerNotification",
  //   "dailyPrayerNotificationTask",
  //   frequency: Duration(days: 1), // Run daily
  // );
  // await requestNotificationPermission();
  //
  // const AndroidInitializationSettings initializationSettingsAndroid =
  // AndroidInitializationSettings('@mipmap/ic_launcher');
  //
  // const InitializationSettings initializationSettings = InitializationSettings(
  //   android: initializationSettingsAndroid,
  // );
  LocationPermission permission;
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever) {
      // Handle the case where the user denied permissions forever
    }
  }

  // await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  // schedulePrayerNotifications();
  runApp(
  ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child:MyApp()));}
// Future<void> requestNotificationPermission() async {
//   if (await Permission.notification.isDenied) {
//     await Permission.notification.request();
//   }
// }
class AppState with ChangeNotifier {
   AppState();
     int pageOfSaved = 0;
    int actualPage = 0;
   bool first = false;
  void setPageOfSaved(int val){
    pageOfSaved = val;
    notifyListeners();
  }
  void setActualPage(int va){
    actualPage = va;
    notifyListeners();
  }
  
  get getActualPage => actualPage;
  get getPageOfSaved => pageOfSaved;

      int qareaa = 1;
  void setQareaa(int qar){
    qareaa = qar;
    print(qar);
    notifyListeners();
  }
  get getQareaa => qareaa;

   late int prayer;
  void setPrayer(int pr){
    prayer = pr;
    notifyListeners();
  }
  get getPrayer => prayer;
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   late int page;
   Future<Position> _determinePosition() async {
     bool serviceEnabled;
     LocationPermission permission;

     // Test if location services are enabled.
     serviceEnabled = await Geolocator.isLocationServiceEnabled();
     if (!serviceEnabled) {
       // Location services are not enabled don't continue
       // accessing the position and request users of the
       // App to enable the location services.
       return Future.error('Location services are disabled.');
     }

     permission = await Geolocator.checkPermission();
     if (permission == LocationPermission.denied) {
       permission = await Geolocator.requestPermission();
       if (permission == LocationPermission.denied) {
         // Permissions are denied, next time you could try
         // requesting permissions again (this is also where
         // Android's shouldShowRequestPermissionRationale
         // returned true. According to Android guidelines
         // your App should show an explanatory UI now.
         return Future.error('Location permissions are denied');
       }
     }

     if (permission == LocationPermission.deniedForever) {
       // Permissions are denied forever, handle appropriately.
       return Future.error(
           'Location permissions are permanently denied, we cannot request permissions.');
     }

     // When we reach here, permissions are granted and we can
     // continue accessing the position of the device.
     return await Geolocator.getCurrentPosition();
   }
  @override
  void initState() {
    _determinePosition();
    WakelockPlus.enable();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context){
    // 
   // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData(
        primaryColor: Colors.black,
        hintColor: Colors.black
      ),
      home: (
          FutureBuilder<bool>(
     future: getData(),
     builder: (buildContext, snapshot) {
       if(snapshot.hasData) {
         if(snapshot.data!){
           return LifeCycleManager(child:MyHomePage(initialPage: page,));
         }
      // Return your home here
      return LifeCycleManager(child:MyHomePage(initialPage: page + 1,));
    } else {
      // Return loading screen while reading preferences
         return Center(child: CircularProgressIndicator());
    }
  },
))
    );
  }

 Future<bool> getData() async {

  SharedPreferences prefs = await SharedPreferences.getInstance();
  print("test");
  AppState appState = Provider.of<AppState>(context ,listen: false);
  int savedPage = prefs.getInt('savedPage') ?? 0;
  print("ok");
  int lastPage = prefs.getInt('lastPage') ?? 0;
  int qareaa = prefs.getInt("Qareaa") ?? 0;
  int prayer = prefs.getInt("prayer") ?? 0;
  page = lastPage;
  appState.setQareaa(qareaa);

  appState.setPrayer(prayer);

  print(page);
appState.setActualPage(lastPage);
appState.setPageOfSaved(savedPage);

print("get saved : ${appState.getPageOfSaved}");
print("get last : $page");
  if(page == 0){
    return false;
  }else{
    return true;
  }
}
}
