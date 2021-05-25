import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_media_notification/flutter_media_notification.dart';
import 'package:provider/provider.dart';
import 'package:quran/screens/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';

import 'screens/HomeView.dart';

void main() { 
  runApp(
  ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child:MyApp()));}
class AppState with ChangeNotifier {
  AppState();

  int pageOfSaved;
  int actualPage;
  void setPageOfSaved(int val){
    pageOfSaved = val;
    notifyListeners();
  }
  void setActualPage(int va){
    actualPage = va;
    notifyListeners();
  }
  
  get getActualPage => actualPage ?? 1;
  get getPageOfSaved => pageOfSaved ?? 0;

  // String url;
  // void setPageUrl(String ss){
  //   url = ss;
  //   notifyListeners();
  // }
  // get getUrl => url;
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page;
  @override
  void initState() {
    
    Wakelock.enable();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context){
    // 
   // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar"),
        Locale("en") // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale('ar'),
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black
      ),
      home: (FutureBuilder<bool>(
     future: getData(),
     builder: (buildContext, snapshot) {
       if(snapshot.hasData) {
         if(snapshot.data){
           // Return your login here
        return LifeCycleManager(child:MyHomePage());
      }

      // Return your home here
      return LifeCycleManager(child:MyHomePage(initialPage: page,));
    } else {

      // Return loading screen while reading preferences
      return Center(child: CircularProgressIndicator());
    }
  },
))
    );
  }

 Future <bool> getData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  AppState appState = Provider.of<AppState>(context ,listen: false);
  int savedPage = prefs.getInt('savedPage');
  int lastPage = prefs.getInt('lastPage');
  if(lastPage != null){
    page = lastPage;
  
    print(page);
  
  appState.setActualPage(lastPage);
  appState.setPageOfSaved(savedPage);
  
  print("get saved : ${appState.getPageOfSaved}");
  print("get last : $page");
  }
  return page == null;
}
}
