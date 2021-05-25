import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/screens/dialog/alerts.dart';
import 'package:quran/screens/homePage.dart';

class Tafseer extends StatefulWidget {
  final int numOfSawra;
  final int thispage;
  Tafseer(this.numOfSawra,this.thispage);
  @override
  _TafseerState createState() => _TafseerState(this.numOfSawra,this.thispage);
}

class _TafseerState extends State<Tafseer> {
  int numOfSawra , thispage;
  _TafseerState(this.numOfSawra,this.thispage);
  TextEditingController textCont = TextEditingController();
  List<int> page = [];
  List<String> raquemayat = [];
  List<String> tafseer = [];
  int lastLength;
  String changer;
  List<String> foundaya = [];
  List<String> foundraqem = [];
  List<int> foundsafha= [];
  int legnthh = 0 ;
  @override
  void initState() {
    getDataJson(numOfSawra, thispage);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height ,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount:  tafseer.length,
              //physics: NeverScrollableScrollPhysics(),
              // cancellationWidget: Text("Cancel"),
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // childAspectRatio: 1.0,
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
              // crossAxisCount: 1,
              // ),
              
              
              itemBuilder: (context, i) {
                return cardSearch(tafseer[i],raquemayat[i],thispage,i);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget cardSearch(String title ,String aya ,int safha ,int index){
   return GestureDetector(
                onTap: (){
                  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage(initialPage:safha)),);
                },
                onLongPress: (){
                  Clipboard.setData(new ClipboardData(text: title));
                  alertTo("copied");
                },
                  child: Container(
                    margin: EdgeInsets.only(bottom:8),
                  color: Colors.black12,
                  child: 
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children:<Widget>[
                      Text(title,style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                      SizedBox(height:10),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.spaceBetween,
                         children:<Widget>[
                         //  Text("سورة : ${swraNameList[listOfNameSwraPerPages[(safha)-1]]}",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                           Text("آية : $aya",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                         Text("صفحة رقم : $safha",style: TextStyle(fontSize:20 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                         ]
                       )
                        ]),
                    )
                    // onTap: () {
                    //   //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
                    // },
                    
                )
    );
  } 

   getDataJson(int numOfSurah , int thispage )async{
    var dataa = await DefaultAssetBundle.of(context).loadString("data/tafseer.json");
    print("innnnnnnnn");
    List jsonResult = json.decode(dataa);
    List inSwra;
    List inSwra2;
    List inSwra3;
    List inSwra4;
    List inSwra5;
    List inSwra6;
    //["data"]["surahs"]
    print(jsonResult.length);
    // if (numOfSurah != 1) {
    inSwra = jsonResult[numOfSurah]["ayahs"];

    if(thispage == 1){
      inSwra = jsonResult[numOfSurah-1]["ayahs"];
      for (var i = 0; i < inSwra.length; i++) {
        print(thispage);
        print(inSwra[i]["page"]);
      if(thispage == inSwra[i]["page"]){
      print("in swra :${inSwra.length}");
      raquemayat.add("${inSwra[i]["numberInSurah"]}");
      tafseer.add("${inSwra[i]["text"]}");
      }
      }
    }else{
      if (numOfSurah -3 >0) {
      inSwra6 = jsonResult[numOfSurah-3]["ayahs"];
      for (var i = 0; i < inSwra6.length; i++) {
      if(thispage == inSwra6[i]["page"]){
      print("in swra6 :${inSwra6.length}");
      raquemayat.add("${inSwra6[i]["numberInSurah"]}");
      tafseer.add("${inSwra6[i]["text"]}");
      }
      }
    }
    if (numOfSurah -2 >0) {
      inSwra3 = jsonResult[numOfSurah-2]["ayahs"];
      for (var i = 0; i < inSwra3.length; i++) {
      if(thispage == inSwra3[i]["page"]){
      print("in swra3 :${inSwra3.length}");
      raquemayat.add("${inSwra3[i]["numberInSurah"]}");
      tafseer.add("${inSwra3[i]["text"]}");
      }
      }
    }

    if (numOfSurah -1 >0) {
      inSwra2 = jsonResult[numOfSurah-1]["ayahs"];
      for (var i = 0; i < inSwra2.length; i++) {
      if(thispage == inSwra2[i]["page"]){
      print("in swra2 :${inSwra2.length}");
      raquemayat.add("${inSwra2[i]["numberInSurah"]}");
      tafseer.add("${inSwra2[i]["text"]}");
      }
      }
    }
     for (var i = 0; i < inSwra.length; i++) {
      if(thispage == inSwra[i]["page"]){
      print("in swra :${inSwra.length}");
      raquemayat.add("${inSwra[i]["numberInSurah"]}");
      tafseer.add("${inSwra[i]["text"]}");
      legnthh = legnthh++;
      }
      }
    
    if (numOfSurah +1 <=114) {
      inSwra4 = jsonResult[numOfSurah+1]["ayahs"];
      for (var i = 0; i < inSwra4.length; i++) {
      if(thispage == inSwra4[i]["page"]){
      print("in swra4 :${inSwra4.length}");
      raquemayat.add("${inSwra4[i]["numberInSurah"]}");
      tafseer.add("${inSwra4[i]["text"]}");
      }
      }
    }
    if (numOfSurah +2 <=114) {
      inSwra5 = jsonResult[numOfSurah+2]["ayahs"];
      for (var i = 0; i < inSwra5.length; i++) {
      if(thispage == inSwra5[i]["page"]){
      print("in swra5 :${inSwra5.length}");
      raquemayat.add("${inSwra5[i]["numberInSurah"]}");
      tafseer.add("${inSwra5[i]["text"]}");
      }
      }
    }
    }
    // }else{
    //   inSwra = jsonResult[numOfSurah-1]["ayahs"];
    // }
    print(inSwra);
    setState(() {
      raquemayat=raquemayat;
      tafseer=tafseer;
    });
    print("tafsserrr  : $tafseer");
  }
}

// ClipRRect(
//                 borderRadius: BorderRadius.circular(40),
//                               child: RaisedButton(
//                   padding: EdgeInsets.only(right:40 , left: 40, top:5 , bottom: 5),
//                   color: Colors.black12,
//                   child: Text("بحث" ,style: TextStyle(fontSize:18 , color: Colors.white),),
//                   onPressed: () {
//                   setState(() {
//                     s = 0;
//                     print(changer);
//                   });
//                   },
//                 ),
//               ),