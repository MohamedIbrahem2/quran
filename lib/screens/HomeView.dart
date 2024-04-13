import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/main.dart';

class LifeCycleManager extends StatefulWidget {
  final Widget child;
  LifeCycleManager({ key, required this.child}) : super(key: key);
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}
class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
      AudioPlayer audioPlayer = AudioPlayer();
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
      try{if (state == AppLifecycleState.paused) {
      } else {
        //audioPlayer.resume();
      }}catch(e){print(e);}
  }
  @override
  Widget build(BuildContext context) {
    return  widget.child;
  }
}