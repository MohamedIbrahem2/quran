import 'dart:async';
import 'dart:math';
import 'package:adhan/adhan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../Model/Calculate_AM_PM.dart';
import 'Container.dart';
import '../Model/Functions.dart';
import '../Model/UserSimplePreferences.dart';
import '../Model/Variable_declarations.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:intl/intl.dart' as intl;

class Adhan extends KFDrawerContent {
  final double lat,lang;
  Adhan({required this.lat,required this.lang});
  @override
  State<Adhan> createState() => _Home_PageState();
}

class _Home_PageState extends State<Adhan> {
  String? country = '';
  int num = 0;
  TimeOfDay timeOfDay = TimeOfDay.now();
  late Timer timer;
  getUserCountry() async{
    List<Placemark> placeMark = await placemarkFromCoordinates(widget.lat,widget.lang);
    print(placeMark[0].country);
    setState(() {
      country = placeMark[0].country;
      if(country == "Egyptian"){
        num = 1;
      }else if(country == "Saudi Arabia"){
        num = 2;
      }else if(country == "Qatar"){
        num = 3;
      }else if(country == "United Arab Emirates"){
        num = 4;
      }else if(country == "Kuwait"){
        num = 5;
      }
    });

  }

  initState()  {
    super.initState();
    getUserCountry();
    retrieve_information();
    int last_index=0,count=0; bool enter=false;

    timer=Timer.periodic(Duration(seconds: 1), (timer) {
      if (second != DateTime.now().second) {
        setState(() {
          if(enter) count++;
          time_now = DateFormat('HH:mm:ss').format(DateTime.now());
          last_index=min[0];
          min=difference(time_now);
          if(last_index!=min[0])colors[last_index]=Colors.white70;
          diff=59-DateTime.now().second;
          time_now=Calculate_time(diff, min[1], min[2]);
          if(min[0]==0) {
            Pray="صلاه الفجر";
            Is_AM_PM=true;
          }
          else if(min[0]==1) {
            Pray="الشروق";
            Is_AM_PM=false;
          }
          else if(min[0]==2) {
            Pray="صلاه الظهر";
            Is_AM_PM=false;
          }
          else if(min[0]==3) {
            Pray="صلاه العصر";
            Is_AM_PM=false;
          }
          else if(min[0]==4) {
            Pray="صلاه المغرب";
            Is_AM_PM=true;
          }
          else if(min[0]==5) {
            Pray="صلاه العشاء";
            Is_AM_PM=true;
          }
          if(time_now=='00:00:00'  && !enter){
            if(min[0]==1||min[0]==2||min[0]==3)AM(min[0]);
            else PM(min[0]);
          }
        }
        );
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var duhur=timer_Pray[2].split(":"); int duhur_hour=int.parse(duhur[0]);
    String Dhuhr_period = duhur_hour < 12 ? "AM" : "PM";
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: new ExactAssetImage(backgroundimage),
              colorFilter: new ColorFilter.mode(background_color, BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Center(
                          child: Column(
                            children: [
                              SizedBox(height: height*0.040,),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: height*0.007,horizontal: width*0.009),
                                child: Column(
                                  children: [
                                    card("fajr",intl.DateFormat.jm().format(getPrayerTime().fajr)),
                                    card("sunrise",intl.DateFormat.jm().format(getPrayerTime().sunrise)),
                                    card("dhuhr",intl.DateFormat.jm().format(getPrayerTime().dhuhr)),
                                    card("asr",intl.DateFormat.jm().format(getPrayerTime().asr)),
                                    card("maghrib",intl.DateFormat.jm().format(getPrayerTime().maghrib)),
                                    card("isha",intl.DateFormat.jm().format(getPrayerTime().isha)),
                                    Card(
                                      color: Colors.black,
                                      elevation: 5,
                                      child: ListTile(
                                        leading: Text("Your Current Location Is : ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                        title: Text(country!,style: TextStyle(color: Colors.white),),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
              DraggableScrollableSheet(
                  initialChildSize: 0.28,
                  builder: (context, scrollController) {
                    return Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width*0.18),
                        image: DecorationImage(
                          image:AssetImage(background_small),
                          colorFilter: new ColorFilter.mode(Colors.red.withOpacity(0.6), BlendMode.dstOut),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.only(top: height*0.009, left: 20, right: 20),
                        child: ListView(
                          controller: scrollController,
                          children: [
                            container("باقي علي $Pray", remain_color, width,height),
                            container_time(time_now, Colors.black87,width,height),
                            SizedBox(height: height*0.09,),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
  Widget card(name,time){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      margin: EdgeInsets.symmetric(vertical:5,horizontal: 5),
      padding: EdgeInsets.symmetric(vertical:5,horizontal: 50),
      decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(fontSize: 22,color: Colors.white,),),
          Text(time, style: TextStyle(fontSize: 22,color: Colors.white,),),
        ],
      ),
    );
  }
  PrayerTimes getPrayerTime(){
    final myCoordinates = Coordinates(widget.lat,widget.lang);

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
}