import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerCustom extends StatefulWidget {
  final String title;
  final int aya;
  final int thispage;
  final String swra;
  final String url;
  AudioPlayerCustom(this.title ,this.aya, this.thispage, this.swra , this.url);
  @override
  _AudioPlayerCustomState createState() => _AudioPlayerCustomState();
}

class _AudioPlayerCustomState extends State<AudioPlayerCustom> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration();
  Duration possition = Duration();
  bool playing = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
          color: Colors.black12,
          margin: EdgeInsets.only(bottom:5,top:5) ,
          padding: EdgeInsets.all(5),
              child:Column(
                children:[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 10 , top:15 , bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "${duration.inSeconds.toInt()} / ${possition.inSeconds.toInt()}",
                        style:
                            TextStyle(fontSize: 18, color: Colors.black54)),
                    slider(),
                    InkWell(
                      onTap: () async {
                        playing
                            ? await audioPlayer
                                .pause()
                                .then((value) => setState(() {
                                      playing = false;
                                    }))
                            : await audioPlayer
                                .play(
                                    widget.url,
                                    isLocal: false)
                                .then((value) => setState(() {
                                      playing = true;
                                    }));

                        audioPlayer.onDurationChanged.listen((Duration dd) {
                          setState(() {
                            duration = dd;
                          });
                        });
                        audioPlayer.onAudioPositionChanged
                            .listen((Duration dd) {
                          setState(() {
                            possition = dd;
                          });
                          if (possition.inSeconds.toInt() ==
                              duration.inSeconds.toInt()) {
                            setState(() {
                              playing = false;
                              audioPlayer.pause();
                              audioPlayer.seek(Duration(seconds: 0));
                            });
                          }
                        });
                      },
                      child: Icon(
                        playing == false ? Icons.play_arrow : Icons.pause,
                        size: 35,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children:<Widget>[
                      Text(widget.title,style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                      SizedBox(height:10),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.spaceBetween,
                         children:<Widget>[
                         //  Text("سورة : ${swraNameList[listOfNameSwraPerPages[(safha)-1]]}",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                           Text("آية : ${widget.aya}",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                         Text("صفحة رقم : ${widget.thispage}",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                         ]
                       )
                        ]),
                    )
            ],
          )
    );
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

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
