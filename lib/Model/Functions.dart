import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Calculate_AM_PM.dart';
import 'UserSimplePreferences.dart';
import 'Variable_declarations.dart';
import 'data.dart';
import 'jsonconnection.dart';


JsonConnection jsonConnection = new JsonConnection();
late Data list;
final String url =
    "https://api.aladhan.com/v1/timingsByCity/city=Giza&country=Egypt&method=5";

Future getPTData() async {
  var res = await http.get(Uri.parse(Uri.encodeFull(url)));
  final data = jsonDecode(res.body);

  list = Data.fromJson(data);

  return list;
}

List<int> difference(String time_now) {
  var diff = [
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0]
  ];
  var substr_now = time_now.split(":"), substr;
  int hournow = int.parse(substr_now[0]),
      Minute_now = int.parse(substr_now[1]),
      hour = 0,
      Minute = 0;
  int hour_diff = 0,
      Minute_diff = 0,
      Second_diff = int.parse(substr_now[2]),
      index = 0;

  for (int i = 0; i < 6; i++) {
    substr=timer_Pray[i].split(":")?? '';
    hour = int.parse(substr[0]);
    Minute = int.parse(substr[1])-1;

    hour_diff = hour - hournow;
    if (hour_diff < 0) hour_diff = hour + (24 - hournow);

    Minute_diff = Minute - Minute_now;
    if (Minute_diff < 0) {
      Minute_diff = Minute + (60 - Minute_now);
      if (hour_diff == 0)
        hour_diff = 23;
      else
        hour_diff--;
    }

    diff[i][0] = hour_diff;
    diff[i][1] = Minute_diff;
  }
  hour_diff = diff[0][0];
  Minute_diff = diff[0][1];
  for (int i = 0; i < 5; i++) {
    if (hour_diff > diff[i + 1][0]) {
      hour_diff = diff[i + 1][0];
      Minute_diff = diff[i + 1][1];
      index = i + 1;
    } else if (hour_diff == diff[i + 1][0] && Minute_diff > diff[i + 1][1]) {
      hour_diff = diff[i + 1][0];
      Minute_diff = diff[i + 1][1];
      index = i + 1;
    }
  }
  return [index, hour_diff, Minute_diff];
}


List<int>Calculate_prayer_period(){
  List<int>period=[0,0,0,0,0,0];
  String time=timer_Pray[5]+":00";
  List<int>diff=difference(time);
  for(int i=0;i<6;i++){
    if(i!=0){
      time=timer_Pray[i-1]+":00";
      diff=difference(time);
    }
    int hour=diff[1];
    int minute=diff[2];
    period[i]=hour*60+minute;
  }
  return period;
}

Calculate_time(int diff, int hour, int minute) {
  String sec = "", hou = "", m = "";
  if (diff < 10)
    sec = "0$diff";
  else
    sec = "$diff";
  if (hour < 10)
    hou = "0${hour}";
  else
    hou = "${hour}";
  if (minute < 10)
    m = "0${minute}";
  else
    m = "${minute}";

  return "$hou:$m:$sec";
}

void AM(int num) {
  if (num == 2) {
    backgroundimage = 'images/img25.jpg';
    background_small = 'images/img4.jpg';
  } else {
    backgroundimage = 'images/img32.jpg';
    background_small = 'images/img26.jpg';
  }
  height_small = 40;
  background_color = Colors.black.withOpacity(0.4);
  remain_color = Colors.lightGreen[900]!;
  for (int i = 0; i < colors.length; i++) {
    if (i == num)
      colors[i] = color_selected;
    else
      colors[i] = Colors.white60;
  }
}

void PM(int num) {
  backgroundimage = 'images/img7.jpg';
  background_small = 'images/img6.jpg';
  height_small = 20;
  remain_color = Colors.teal[200]!;

  for (int i = 0; i < colors.length; i++) {
    if (i == num) {
      colors[i] = color_selected;
      color_selected_int=i;
    } else
      colors[i] = Colors.white70;
  }
}





storeinformation()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("Fajr",timer_Pray[0] );
  prefs.setString("shrouk",timer_Pray[1]);
  prefs.setString("duhur",timer_Pray[2]);
  prefs.setString("Asr",timer_Pray[3]);
  prefs.setString("magrib",timer_Pray[4]);
  prefs.setString("Isha",timer_Pray[5]);

}
retrieve_information()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  timer_Pray[0]=prefs.getString("Fajr" )??"00:00";
  timer_Pray[1]=prefs.getString("shrouk")??"00:00";
  timer_Pray[2]=prefs.getString("duhur")??"00:00";
  timer_Pray[3]=prefs.getString("Asr")??"00:00";
  timer_Pray[4]=prefs.getString("magrib")??"00:00";
  timer_Pray[5]=prefs.getString("Isha")??"00:00";

}