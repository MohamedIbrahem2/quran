

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:quran/fehres.dart';
import 'package:quran/lists/listImage.dart';
import 'package:quran/lists/listOfNameSwraPerPages.dart';
import 'package:quran/lists/listOfPartPerPage.dart';
import 'package:quran/lists/listOfParts.dart';
import 'package:quran/lists/pagenumFunc.dart';
import 'package:quran/lists/swraNameList.dart';
import 'package:quran/main.dart';
import 'package:quran/screens/adhan.dart';
import 'package:quran/screens/ajzaa.dart';
import 'package:quran/screens/azkar/azkar.dart';
import 'package:quran/screens/dialog/goDialog.dart';
import 'package:quran/screens/dialog/savedialog.dart';
import 'package:quran/screens/doaa.dart';
import 'package:quran/screens/fehresPages.dart';
import 'package:choice/choice.dart';
import 'package:quran/screens/our.dart';
import 'package:quran/qiblah/qiblah.dart';
import 'package:quran/screens/tafseer.dart';
import 'package:quran/search.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'audio/saf7aaGetAudio.dart';

class MyHomePage extends StatefulWidget {
  final int initialPage ;
  MyHomePage({required this.initialPage});
  @override
  _MyHomePageState createState() =>
      _MyHomePageState(initialPage: this.initialPage);
}

class _MyHomePageState extends State<MyHomePage> {
  int initialPage;

  AudioPlayer audioPlayer = AudioPlayer();
  late String url;


  _MyHomePageState({required this.initialPage});

  bool show = false;
  bool darkMode = false;
  late int page;
  late String part;
  late String swra;
  Duration duration = Duration();
  Duration possition = Duration();
  bool messages = false;
  PageController _pageController = PageController();
  bool isplay = false;


  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        backgroundColor: Colors.black87,
        title: new Text('خروج', style: TextStyle(color: Colors.white)),
        content: new Text('هل حقا تود الخروج من التطبيق ؟',
            style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          new TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('لا', style: TextStyle(color: Colors.white)),
          ),
          new TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: new Text('نعم', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    )) ??
        false;
  }

  List<String> choices = [
  'الشيخ ماهر المعيقلي',
  'الشيخ عبدالباسط (مجود)',
  'الشيخ عبدالباسط (مرتل)',
  'الشيخ أبوبكر الشاطري',
  'الشيخ عبدالرحمن السديسي',
  'الشيخ مشاري العفايسي',
  'الشيخ محمود الحصري (مرتل)',
  'الشيخ محمود الحصري (مجود)',
  'الشيخ المنشاوي(مجود)',
  'الشيخ محمد ايوب',
];

  String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  String soundUrl(String verse , String page){
    AppState appState = Provider.of<AppState>(context,listen: false);
    switch (appState.getQareaa) {
      case 1:
        return "https://aswaatulqurraa.com/files/Pages/Maher%20al%20Muaiqly%20(15%20Liner)/$verse/$page.mp3";
      case 2:
        return "https://everyayah.com/data/Abdul_Basit_Mujawwad_128kbps/PageMp3s/Page$page.mp3";
      case 3:
        return "https://everyayah.com/data/Abdul_Basit_Murattal_64kbps/PageMp3s/Page$page.mp3";
      case 4:
        return "https://everyayah.com/data/Abu_Bakr_Ash-Shaatree_64kbps/PageMp3s/Page$page.mp3";
      case 5:
        return "https://everyayah.com/data/Abdurrahmaan_As-Sudais_64kbps/PageMp3s/Page$page.mp3";
      case 6:
        return "https://everyayah.com/data/Alafasy_64kbps/PageMp3s/Page$page.mp3";
      case 7:
        return "https://everyayah.com/data/Husary_64kbps/PageMp3s/Page$page.mp3";
      case 8:
        return "https://everyayah.com/data/Husary_Mujawwad_64kbps/PageMp3s/Page$page.mp3";
      case 9:
        return "https://everyayah.com/data/Minshawy_Mujawwad_64kbps/PageMp3s/Page$page.mp3";
      case 10:
        return "https://everyayah.com/data/Muhammad_Ayyoub_128kbps/PageMp3s/Page$page.mp3";
      default:
      return "https://everyayah.com/data/Alafasy_64kbps/PageMp3s/Page$page.mp3";
    }
  }
    double? lat,lang;
  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  }
  getUserLocation() async {
    Position currentLocation = await locateUser();
    setState(() {
      LatLng _center = LatLng(currentLocation.latitude, currentLocation.longitude);
      lat = _center.latitude;
      lang = _center.longitude;

    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
      getUserLocation();
    });
    AppState appState = Provider.of<AppState>(context,listen: false);
    _pageController = PageController(
      initialPage: initialPage - 1,
    );
    String thePageNumber = initialPage<10 ? "00$initialPage": initialPage>=10 && initialPage<100 ? "0$initialPage":"$initialPage";
    int partNumber = listOfPartPerPage[initialPage - 1]+1;
    url = soundUrl("$partNumber", "$thePageNumber");
    appState.first ? playPause() : null;
    page = initialPage;
    swra = swraNameList[listOfNameSwraPerPages[initialPage - 1]];
    part = listOfParts[listOfPartPerPage[initialPage - 1]];
      super.initState();
  }

    @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context );
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: <Widget>[
                PageView.builder(
                reverse: true,
                    controller: _pageController,
                    onPageChanged: (i) async {
                        String thePageNumber = i+1<10 ? "00${i+1}": i+1>=10 && i+1<100 ? "0${i+1}":"${i+1}";
                        int partNumber = listOfPartPerPage[i+1 -1]+1;
                      setState(() {
                        url = soundUrl("$partNumber", "$thePageNumber");
                        page = i + 1;
                        swra = swraNameList[listOfNameSwraPerPages[i]];
                        part = listOfParts[listOfPartPerPage[i]];
                        getHezpNum(page);
                        _savelastPage();
                        print("$url");
                      });
                    },
                    itemCount: listOfImages.length,
                    itemBuilder: (context, index) {
                      return pages(listOfImages[index]);
                    }),
                show
                    ? Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.92),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        // DRAG BAR TOP (optional)
                        Container(
                          width: 45,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 15),

                        // TOP INFO ROW
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الجزء $part",
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                            Text("$page",
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                            Text(page % 2 == 0 ? "وجه أيسر" : "وجه أيمن",
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                            Text("سورة $swra",
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                        ),

                        SizedBox(height: 10),

                        // AUDIO CONTROLS
                        Container(
                          height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: Icon(Icons.fast_rewind,
                                    color: Colors.white, size: 28),
                                onPressed: () {
                                  if (possition.inSeconds > 10) {
                                    audioPlayer.seek(Duration(
                                        seconds: possition.inSeconds - 10));
                                  }
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  isplay ? Icons.pause : Icons.play_arrow,
                                  color: isplay ? Colors.white60 : Colors.green,
                                  size: 32,
                                ),
                                onPressed: () => playPause(),
                              ),
                              IconButton(
                                icon: Icon(Icons.fast_forward,
                                    color: Colors.white, size: 28),
                                onPressed: () {
                                  if (possition.inSeconds + 10 < duration.inSeconds) {
                                    audioPlayer.seek(Duration(
                                        seconds: possition.inSeconds + 10));
                                  }
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.stop, color: Colors.red, size: 28),
                                onPressed: () {
                                  audioPlayer.stop();
                                  setState(() => isplay = false);
                                },
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),

                        // RECITER SELECT BOX
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                              ),
                              builder: (context) {
                                return Container(
                                  height: MediaQuery.of(context).size.height * 0.55,
                                  padding: EdgeInsets.all(20),
                                  child: PromptedChoice<String>.single(
                                    title: 'اختر القارئ المفضل لديك',
                                    clearable: true,
                                    value: selectedValue,
                                    onChanged: (state) {
                                      Navigator.pop(context); // close the sheet

                                      setState(() {
                                        selectedValue = state;
                                      });

                                      // ORIGINAL LOGIC
                                      _saveQareaaValue(choices.indexOf(state!) + 1);
                                      appState.setQareaa(choices.indexOf(state) + 1);

                                      String thePageNumber = initialPage < 10
                                          ? "00$initialPage"
                                          : initialPage < 100
                                          ? "0$initialPage"
                                          : "$initialPage";

                                      int partNumber = listOfPartPerPage[initialPage - 1] + 1;

                                      setState(() {
                                        url = soundUrl("$partNumber", "$thePageNumber");
                                      });
                                    },
                                    itemCount: choices.length,
                                    itemBuilder: (state, i) {
                                      return ChoiceChip(
                                        elevation: 5,
                                        selected: state.selected(choices[i]),
                                        onSelected: state.onSelected(choices[i]),
                                        label: Text(choices[i]),
                                      );
                                    },
                                    listBuilder: ChoiceList.createGrid(
                                      spacing: 10,
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              selectedValue ?? "اختر القارئ المفضل لديك",
                              style: TextStyle(color: Colors.black, fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
                    : Container(),

// ----------------------------------------------------
// TAJWEED COLOR BAR BELOW MENU (exactly like screenshot)
// ----------------------------------------------------
                Positioned(
                  bottom: show
                      ? 0
                      : -200, // hide when menu closed
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Image.asset(
                      "images/bar.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

// ----------------------------------------------------
// BOTTOM MENU — EXACT screenshot design
// ----------------------------------------------------
                show
                    ? Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.43,
                    //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.93),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            crossAxisCount: 4,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 0,
                            childAspectRatio: (MediaQuery.of(context).size.width / 5) / 65,
                            children: [
                              _menuItem(Icons.list, "الفهرس", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Fehres()));
                              }),
                              _menuItem(Icons.exit_to_app, "إنتقال إلى صفحة", () {
                                showDialog(
                                  context: context,
                                  builder: (_) => CustomGoDialog(
                                    title: "رقم الصفحة التي تود الذهاب اليها",
                                    buttonText: "ذهاب",
                                    image: Image.asset("images/icon.png"),
                                  ),
                                );
                              }),
                              _menuItem(Icons.bookmark_border, "حفظ علامة", () {
                                setState(() {
                                  show = false; // close menu like original behavior
                                });

                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => CustomSaveDialog(
                                    page: page,
                                    title: "هل تود تغيير مكان العلامة ؟",
                                    description: "",
                                    buttonText: "نعم",
                                    image: Image(
                                      image: AssetImage("images/icon.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              }),

                              _menuItem(Icons.bookmark, "إنتقال إلى علامة", () {
                                _pageController.animateToPage(
                                  appState.getPageOfSaved,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              }),
                              _menuItem(Icons.spa, "الأجزاء", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Fehress()));
                              }),
                              _menuItem(Icons.library_books, "الصفحات", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => FehresPages()));
                              }),
                              _menuItem(Icons.search, "البحث", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Home()));
                              }),
                              _menuItem(Icons.mosque_outlined, "مواقيت الصلاة", () {
                                if (lat != null && lang != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          Adhan(lat: lat!, lang: lang!),
                                    ),
                                  );
                                }
                              }),
                              _menuItem(Icons.directions, "إتجاه القبلة", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => qiblah()));
                              }),
                              _menuItem(Icons.calendar_month, "الأذكار", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Azkar()));
                              }),
                              _menuItem(Icons.book, "التفسير", () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Tafseer(
                                      listOfNameSwraPerPages[page - 1],
                                      page,
                                    ),
                                  ),
                                );
                              }),
                              _menuItem(Icons.audiotrack, "تلاوة آيات الصفحة", () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Saf7aaGetAudio(
                                      listOfNameSwraPerPages[page - 1],
                                      page,
                                      swraNameList[listOfNameSwraPerPages[page - 1]],
                                    ),
                                  ),
                                );
                              }),
                              _menuItem(Icons.brightness_3, "الوضع الليلي", () {
                                setState(() => darkMode = !darkMode);
                              }),
                              _menuItem(Icons.import_contacts, "دعاء الختم", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Doaa()));
                              }),
                              _menuItem(Icons.share, "مشاركة", () {
                                final RenderBox box =
                                context.findRenderObject() as RenderBox;

                                Share.share(
                                  "وددت مشاركة تطبيق المصحف هذا معك \n https://play.google.com/store/apps/details?id=giga.quran",
                                  sharePositionOrigin:
                                  box.localToGlobal(Offset.zero) & box.size,
                                );
                              }),
                              _menuItem(Icons.group, "تواصل معنا", () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => A3mal()));
                              }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    : Container(),

              ],
            ),
          )),
    );
  }

  _savelastPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int lastPage = page;
    print(page);
    await prefs.setInt('lastPage', lastPage);
  }
  _saveQareaaValue(int valQ) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.setInt('Qareaa', valQ);
  }
  Widget _menuItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 32),
          SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }


  Widget pages(img) {
    AppState appState = Provider.of<AppState>(context, listen: false);
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  show = !show;
                });
              },
              child: ColorFiltered(
                colorFilter: darkMode
                    ? ColorFilter.mode(Colors.white, BlendMode.difference)
                    : ColorFilter.mode(Colors.orange[50]!, BlendMode.darken),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width >
                          MediaQuery.of(context).size.height
                      ? MediaQuery.of(context).size.height * 3
                      : MediaQuery.of(context).size.height - 35,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("images/$img"),
                  ),
                ),
              ),
            ),
            appState.getPageOfSaved == page - 1
                ? Positioned(
                    top: 0,
                    left: 40,
                    child: Image(
                      image: AssetImage("images/bookmark0.png"),
                      height: 120,
                    ))
                : Container(),
          ],
        ),
      ],
    );
  }
//   getLocation()async{
//     Location location = new Location();
//     try{
//       _serviceEnabled = await location.serviceEnabled();
// if (!_serviceEnabled) {
//   _serviceEnabled = await location.requestService().then((value)=>getLocation());
//   if (!_serviceEnabled) {
//      _serviceEnabled = await location.requestService().then((value)=>getLocation());
//   }
// }
// _permissionGranted = await location.hasPermission();
// if (_permissionGranted == PermissionStatus.DENIED) {
//   _permissionGranted = await location.requestPermission();
//   if (_permissionGranted != PermissionStatus.GRANTED) {
//     return;
//   }
// }

// EasyLoading.show(status: "Please wait a moment...");
// _locationData = await location.getLocation();
//     setlocation();
//     print("lat ${_locationData.latitude} , long ${_locationData.longitude}");


//     }catch(e){
//        print(e);
//     }
//   }

//     setlocation() async{
//      EasyLoading.showSuccess("Ready to use" , duration: Duration(milliseconds: 400));
//      Navigator.push(context, MaterialPageRoute(builder: (context)=>Prayer(_locationData.latitude,_locationData.longitude)));
//   }
void playPause(){
  AppState appState = Provider.of<AppState>(context,listen: false);
  isplay && "${audioPlayer.state}" != "AudioPlayerState.PAUSED"
      ?  audioPlayer
      .pause()
      .then((value) {
    //MediaNotification.hideNotification();
    setState(() {
      appState.first = false;
      isplay = false;
    });})
      :  audioPlayer
      .play(
      UrlSource(url),
      mode: PlayerMode.mediaPlayer)
      .then((value) {
    //MediaNotification.showNotification(title: 'تلاوة قرآنية', author: 'الشيخ ماهر المعيقلي');
    setState(() {
      print(url);
      isplay = true;
    });});
  audioPlayer.onDurationChanged.listen((Duration dd) {
    setState(() {
      duration = dd;
    });
  });
  audioPlayer.onPositionChanged
      .listen((Duration dd)  {
    setState(() {
      possition = dd + Duration(milliseconds: 200);
    });
    if (possition.inSeconds.toInt() ==
        duration.inSeconds.toInt()) {
      setState(() {
        isplay = false;
        audioPlayer.pause();
        audioPlayer.seek(Duration(seconds: 0));
        appState.first = true;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(initialPage: page + 1,)));
      });
    }
  });
}
}
