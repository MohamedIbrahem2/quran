// import 'package:adhan/adhan.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart' as intl;
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smart_select/smart_select.dart';

// import '../main.dart';


// class Prayer extends StatefulWidget{
//   final double lat,long;
//   Prayer(this.lat,this.long);
//   @override
//   _PrayerState createState() => _PrayerState();
// }
// List<S2Choice<int>> options = [
//   S2Choice<int>(value: 1, title: 'مصر'),
//   S2Choice<int>(value: 2, title: 'السعودية'),
//   S2Choice<int>(value: 3, title: 'قطر'),
//   S2Choice<int>(value: 4, title: 'الامارات'),
//   S2Choice<int>(value: 5, title: 'الكويت'),
// ];
// class _PrayerState extends State<Prayer> {
//   @override
//   Widget build(BuildContext context) {
//     AppState appState = Provider.of<AppState>(context);
//     return Scaffold(
//       bottomNavigationBar: Container(
//                         color: Colors.white,
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         child: Directionality(
//                           textDirection: TextDirection.ltr,
//                           child: SmartSelect<int>.single(
//                             placeholder: "اختر البلد",
//                             title: 'اختر بلدك',
//                             choiceType: S2ChoiceType.switches,
//                             value: appState.getPrayer,
//                             choiceItems: options,
//                             onChange: (state){  
//                             _savePrayerValue(state.value);
//                             appState.setPrayer(state.value);
//                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Prayer(widget.lat, widget.long)));
//                             }
//                           ),
//                         ),
//                       ),
//       backgroundColor: Colors.orange[50],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: Text("مواقيت الصلاة", style: TextStyle(fontSize: 22,color: Colors.white,),),
//         centerTitle: true,
//         leading: IconButton(onPressed: ()=>Navigator.pop(context), icon:Icon(Icons.arrow_back , color: Colors.white,)),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.orange[50],
//           //gradient: LinearGradient(colors: [Color(0xff313131),Color(0xff101010)],begin: Alignment.topLeft,end: Alignment.bottomRight)
//           ),
//           child: widget.lat != null ? ListView(
//             shrinkWrap: true,
//             children: [
//               card("fajr",intl.DateFormat.jm().format(getPrayerTime().fajr)),
//               card("sunrise",intl.DateFormat.jm().format(getPrayerTime().sunrise)),
//               card("dhuhr",intl.DateFormat.jm().format(getPrayerTime().dhuhr)),
//               card("asr",intl.DateFormat.jm().format(getPrayerTime().asr)),
//               card("maghrib",intl.DateFormat.jm().format(getPrayerTime().maghrib)),
//               card("isha",intl.DateFormat.jm().format(getPrayerTime().isha)),
//             ],
//           ):Container(),
//       ),
//     );
//   }
//   Widget card(name,time){
//     return Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 70,
//                 margin: EdgeInsets.symmetric(vertical:5,horizontal: 5),
//                 padding: EdgeInsets.symmetric(vertical:5,horizontal: 50),
//                 decoration: BoxDecoration(
//                   color: Colors.black26,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(name, style: TextStyle(fontSize: 22,color: Colors.white,),),
//                     Text(time, style: TextStyle(fontSize: 22,color: Colors.white,),),
//                   ],
//                 ),
//               );
//   }
//   PrayerTimes getPrayerTime(){
//   AppState appState = Provider.of<AppState>(context,listen: false);
//   final myCoordinates = Coordinates(widget.lat, widget.long);
//    // Replace with your own location lat, lng.
//    var param;
//   switch (appState.getPrayer) {
//     case 1:
//       param = CalculationMethod.egyptian.getParameters();
//       break;
//      case 2:
//       param = CalculationMethod.umm_al_qura.getParameters();
//       break;
//      case 3:
//       param = CalculationMethod.qatar.getParameters();
//       break;
//      case 4:
//       param = CalculationMethod.dubai.getParameters();
//       break;
//      case 5:
//       param = CalculationMethod.kuwait.getParameters();
//       break;
//     default:
//       param = CalculationMethod.egyptian.getParameters();
//   }
//   final params = param;
//   params.madhab = Madhab.shafi;
//   final prayerTimes = PrayerTimes.today(myCoordinates, params);
//   // print(DateFormat.jm().format(prayerTimes.fajr));
//   // print(DateFormat.jm().format(prayerTimes.sunrise));
//   // print(DateFormat.jm().format(prayerTimes.dhuhr));
//   // print(DateFormat.jm().format(prayerTimes.asr));
//   // print(DateFormat.jm().format(prayerTimes.maghrib));
//   // print(DateFormat.jm().format(prayerTimes.isha));
//   return prayerTimes;
// }
// _savePrayerValue(int valQ) async {
//      SharedPreferences prefs = await SharedPreferences.getInstance();
//      await prefs.setInt('prayer', valQ);
//   }
// }
