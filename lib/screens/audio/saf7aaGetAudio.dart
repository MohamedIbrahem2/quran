import 'dart:convert';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran/screens/dialog/alerts.dart';
import 'customAudioPlayer.dart';
import 'dropDown.dart';

class Saf7aaGetAudio extends StatefulWidget {
  final int numOfSawra;
  final int thispage;
  final String swra;

  Saf7aaGetAudio(this.numOfSawra, this.thispage, this.swra);

  @override
  _Saf7aaGetAudioState createState() => _Saf7aaGetAudioState();
}

class _Saf7aaGetAudioState extends State<Saf7aaGetAudio> {
  List<bool> strikeList = [];
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration();
  Duration possition = Duration();
  bool playing = false;
  List<String> id = [""];
  List<String> shekh = [""];
  String selectShekh = "";
  String selectId = "";
  List<String> urls = [];
  List<String> ayanum = [];
  List<String> ayat = [];

  @override
  void initState() {
    alertTo("انتظر لحظة من فضلك ..");
    getDataJson();
    getShekhs();
    super.initState();
  }
  @override
  void dispose(){
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "اختر القارئ",
                  style: TextStyle(
                      fontSize: 22, color: Colors.black87, fontFamily: "quran"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: dropDown((value) {
                      setState(() {
                        selectShekh = value;
                      });
                      return null;
                    }, shekh, context, selectShekh),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(
                            right: 30, left: 30, top: 5, bottom: 5),
                        backgroundColor: Colors.black12,
                      ),
                      child: Text(
                        "عرض",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      onPressed: () {
                        alertTo("انتظر لحظة من فضلك ..");
                        ayanum = [];
                        urls = [];
                        for (var i = 0; i < shekh.length; i++) {
                          if (shekh[i].contains(selectShekh) &&
                              shekh[i].trim() != "") {
                            selectId = id[i];
                          }
                        }
                        getAyat(selectId, widget.thispage);
                      },
                    ),
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: urls.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                        strikeList[index] ? "${duration.inSeconds.toInt()} / ${possition.inSeconds.toInt()}" : "0" + "/" + "0",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black54)),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: ProgressBar(
                                          progress: strikeList[index] ? possition : Duration(microseconds: 0),
                                          total: strikeList[index] ? duration : Duration(microseconds: 0))),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: ()  {
                                          {
                                            playing
                                            ?  audioPlayer
                                                .pause()
                                                .then((value) => setState(() {
                                              playing = false;
                                              print("pause");
                                            }))
                                             : audioPlayer
                                                    .play(
                                                      UrlSource("https://verses.quran.com/${urls[index]}"),
                                                    );
                                                     setState(() {
                                                       bool temp = !strikeList[index];
                                                       strikeList.removeAt(index);
                                                       strikeList.insert(index, temp);
                                                              playing = true;
                                                            });

                                            audioPlayer.onDurationChanged
                                                .listen((Duration dd) {
                                              setState(() {
                                                if(strikeList[index]){
                                                  duration = dd;
                                                }

                                              });
                                            });
                                            audioPlayer.onPositionChanged
                                                .listen((Duration dd) {
                                              setState(() {
                                                  possition = dd + Duration(milliseconds: 100);

                                              });
                                              if (possition.inSeconds.toInt() ==
                                                  duration.inSeconds.toInt()) {
                                                setState(() {
                                                  playing = false;
                                                  audioPlayer.pause();
                                                  audioPlayer.seek(
                                                      Duration(seconds: 0));
                                                  strikeList = List.generate(urls.length, (index)=>false);
                                                });
                                              }
                                            });
                                             ;
                                          }
                                        },
                                        icon: Icon(strikeList[index] ? Icons.pause : Icons.play_arrow,
                                          size: 35,)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                ayat[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black54,
                                    fontFamily: "quran",
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "آية : ${ayanum[index]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black54,
                                        fontFamily: "quran",
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "صفحة رقم : ${widget.thispage}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black54,
                                        fontFamily: "quran",
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  getShekhs() async {
    try {
      var request = await http.get(
        Uri.parse(
            "https://api.quran.com/api/v4/resources/recitations?language=ar"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(request.body);
      var data = jsonDecode(request.body);

      List dat = data['recitations'];
      for (var i = 0; i < dat.length; i++) {
        id.add("${dat[i]["id"]}");
        String type =
            "${dat[i]["style"]}" == "null" ? "_" : "${dat[i]["style"]}";
        shekh.add("${dat[i]["translated_name"]["name"]} ($type)");
      }
      setState(() {
        shekh = shekh;
      });

      alertTo("تم");
    } catch (e) {
      alertTo("تأكد من اتصالك بالانترنت");
      print(e);
    }
  }

  getAyat(thisid, thispage) async {
    try {
      var request = await http.get(
        Uri.parse(
            "https://api.quran.com/api/v4/quran/recitations/$thisid?page_number=$thispage"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(request.body);
      var data = jsonDecode(request.body);

      List dat = data['audio_files'];
      for (var i = 0; i < dat.length; i++) {
        urls.add("${dat[i]["url"]}");
        String aya = "${dat[i]["verse_key"]}";
        List<String> split = aya.split(":");
        ayanum.add("${split[1]}");
      }
      setState(() {
        urls = urls;
        strikeList = List.generate(urls.length, (index)=>false);
      });

      alertTo("تم");
    } catch (e) {
      alertTo("تأكد من اتصالك بالانترنت");
      print(e);
    }
  }

  getDataJson() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("data/data.json");
    List jsonResult = json.decode(data);
    print(jsonResult.length);
    for (var i = 0; i < jsonResult.length; i++) {
      if ("${jsonResult[i]["safha"]}" == "${widget.thispage}") {
        ayat.add("${jsonResult[i]["content"]}");
      }
    }
    setState(() {
      ayat = ayat;
    });
  }

  Widget slider() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Slider.adaptive(
          activeColor: Colors.black54,
          inactiveColor: Colors.black54,
          min: 0.0,
          value: possition.inSeconds.toDouble(),
          max: duration.inSeconds.toDouble(),
          onChanged: (double value) {
            setState(() {
              audioPlayer.seek(Duration(seconds: value.toInt()));
            });
          }),
    );
  }
}
