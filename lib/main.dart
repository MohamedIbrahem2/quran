import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
