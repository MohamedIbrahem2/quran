

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
import 'package:quran/screens/dialog/goDialog.dart';
import 'package:quran/screens/dialog/savedialog.dart';
import 'package:quran/screens/doaa.dart';
import 'package:quran/screens/fehresPages.dart';
import 'package:choice/choice.dart';
import 'package:quran/screens/our.dart';
import 'package:quran/qiblah/qiblah.dart';
import 'package:quran/screens/tafseer.dart';
import 'package:quran/search.dart';
import 'package:share/share.dart';
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
   double lat = 0,lang = 0;
  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
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
    getUserLocation();
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
                        child: Container(
                          padding: EdgeInsets.only(right: 10, left: 10),
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black87,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "الجزء $part",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "$page",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                page % 2 == 0 ? "وجه ايسر" : "وجه ايمن",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Text(
                                "سورة $swra",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ))
                    : Container(),
                show ?
                Positioned(
                  top:34,
                  right: 0,
                child: Container(
                  height:50,
                  width:210,
                  color: Colors.black87,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.fast_rewind , color:Colors.white , size: 30),
                    onPressed: (){
                    if(possition.inSeconds.toInt() - 10 > 0) { audioPlayer.seek(Duration(seconds: possition.inSeconds.toInt() - 10 ));}
                    },) ,
                    Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.white30,
                                      ),
                    IconButton(onPressed: ()  {
                        playPause();
                      },
                      icon: Icon(
                        isplay == false && "${audioPlayer.state}" != "AudioPlayerState.PLAYING"? Icons.play_arrow : Icons.pause,
                        size: 30,
                        color: isplay == false && "${audioPlayer.state}" != "AudioPlayerState.PLAYING"? Colors.green:Colors.white60,
                      ),),
                      Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.white30,
                                      ),
                      IconButton(icon: Icon(Icons.fast_forward , color:Colors.white , size: 30),
                    onPressed: (){
                     if(possition.inSeconds.toInt() + 10 < duration.inSeconds.toInt()) {audioPlayer.seek(Duration(seconds: possition.inSeconds.toInt() + 10 ));}
                    },) ,
                    Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.white30,
                                      ),
                    IconButton(icon: Icon(Icons.stop , color:Colors.red[900] , size: 30),
                    onPressed: (){
                    audioPlayer.stop();
                    setState(() {
                      isplay = false;
                    });
                    },) ,

                  ],
                  ),
                )):Container(),
                show
                    ? Positioned(
                        bottom: 0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width / 6.5,
                            child: Image(
                              image: AssetImage("images/bar.png"),
                              fit: BoxFit.fill,
                            )))
                    : Container(),
                   show
                    ? Positioned(
                      bottom: 60,
                      child: Container(
                        color: Colors.white,
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: PromptedChoice<String>.single(
                            title: 'اختر القارئ المفضل لديك',
                            clearable: true,
                            value: selectedValue,
                            onChanged: (state){
                              selectedValue = state;
                              _saveQareaaValue(choices.indexOf(state!) + 1);
                              appState.setQareaa(choices.indexOf(state) + 1);
                              String thePageNumber = initialPage<10 ? "00$initialPage": initialPage>=10 && initialPage<100 ? "0$initialPage":"$initialPage";
                              int partNumber = listOfPartPerPage[initialPage - 1]+1;
                              url = soundUrl("$partNumber", "$thePageNumber");
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ):Container(),
                show
                    ? Positioned(
                        top: 84,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.63,
                          width: 180,
                          color: Colors.black87,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  //padding: EdgeInsets.only(right:10,left:10),
                                  width: 170,
                                  height: 310,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.search,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "البحث",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Adhan(lat: lat, lang: lang,)));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.search,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "مواقيت الصلاة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                           //getLocation();
                                           Navigator.push(context, MaterialPageRoute(builder: (context)=>qiblah()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.directions,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "إتجاه القبلة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          print(page);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Tafseer(
                                                      listOfNameSwraPerPages[
                                                          page-1],
                                                      page)));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.book,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "التفسير",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Saf7aaGetAudio(listOfNameSwraPerPages[page-1],page,swraNameList[listOfNameSwraPerPages[page - 1]]) ));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.audiotrack,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "تلاوة آيات الصفحة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),

                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            darkMode = !darkMode;
                                          });
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.brightness_3,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "الوضع الليلي",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            show = false;
                                          });
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                CustomSaveDialog(
                                              page: page,
                                              title:
                                                  "هل تود تغيير مكان العلامة ؟",
                                              description: "",
                                              buttonText: "نعم",
                                              image: Image(
                                                image: AssetImage(
                                                    "images/icon.png"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 22,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "حفظ علامة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          _pageController.animateToPage(
                                            appState.getPageOfSaved,
                                            duration:
                                                Duration(milliseconds: 350),
                                            curve: Curves.easeIn,
                                          );
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 22,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "إنتقال إلى علامة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                CustomGoDialog(
                                              title:
                                                  "رقم الصفحة التي تود الذهاب اليها",
                                              buttonText: "ذهاب",
                                              image: Image(
                                                image: AssetImage(
                                                    "images/icon.png"),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.exit_to_app,
                                                size: 22,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "إنتقال إلى صفحة",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: 170,
                                  color: Colors.white30,
                                ),
                                Container(
                                  //padding: EdgeInsets.only(right:10,left:10),
                                  width: MediaQuery.of(context).size.width,
                                  height: 120,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Fehres()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.list,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "الفهرس",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Fehress()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.spa,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "الاجزاء",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FehresPages()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.library_books,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "الصفحات",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // Container(
                                      //   height: 1,
                                      //   width: 170,
                                      //   color: Colors.white30,
                                      // ),
                                      // GestureDetector(
                                      //   onTap: () {
                                      //     setState(() {
                                      //       getAudio = true;
                                      //     });
                                      //   },
                                      //   child: Container(
                                      //     width: 170,
                                      //     color: Colors.transparent,
                                      //     child: Row(
                                      //       children: <Widget>[
                                      //         Icon(
                                      //           Icons.audiotrack,
                                      //           size: 25,
                                      //           color: Colors.white,
                                      //         ),
                                      //         SizedBox(width: 10),
                                      //         Text(
                                      //           "تلاوة الصفحة",
                                      //           style: TextStyle(
                                      //               fontSize: 19,
                                      //               color: Colors.white),
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: 170,
                                  color: Colors.white30,
                                ),
                                Container(
                                  //padding: EdgeInsets.only(right:10,left:10),
                                  width: MediaQuery.of(context).size.width,
                                  height: 110,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Doaa()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.import_contacts,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "دعاء الختم",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          final RenderBox box =
                                              context.findRenderObject() as RenderBox;
                                          Share.share(
                                              "وددت مشاركة تطبيق المصحف هذا معك \n https://play.google.com/store/apps/details?id=giga.quran",
                                              subject:
                                                  "وددت مشاركة تطبيق المصحف هذا معك",
                                              sharePositionOrigin:
                                                  box.localToGlobal(
                                                          Offset.zero) &
                                                      box.size);
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.share,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "مشاركة",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 170,
                                        color: Colors.white30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      A3mal()));
                                        },
                                        child: Container(
                                          width: 170,
                                          color: Colors.transparent,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.group,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "تواصل معنا",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    : Container()
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
                      : MediaQuery.of(context).size.height - 25,
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
