import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/lists/pagenumFunc.dart';
import 'package:quran/screens/dialog/alerts.dart';
import 'package:quran/screens/homePage.dart';

import 'lists/listOfNameSwraPerPages.dart';
import 'lists/swraNameList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textCont = TextEditingController();
  List<String> ayat = [];
  List<String> raquemayat = [];
  List<int> safhat = [];
  late int lastLength;
  late String changer;
  List<String> foundaya = [];
  List<String> foundraqem = [];
  List<int> foundsafha = [];
  int legnthh = 0;

  @override
  void initState() {
    getDataJson();
    toast_show("ملحوظة : اضغط مطولا لنسخ الاية");
    super.initState();
  }

  hasArabicCharacters(String text) {
    String newT = "";
    var regex = new RegExp("^[\u0621-\u064A\s0-9]");
    for (var i = 0; i < text.length; i++) {
      if (regex.stringMatch(text[i]).toString() != "null") {
        newT = newT + regex.stringMatch(text[i]).toString();
      }
    }
    return newT;
  }

  Future _getALlPosts(String text) async {
    foundaya = [];
    foundraqem = [];
    foundsafha = [];
    for (var i = 0; i < ayat.length; i++) {
      if (hasArabicCharacters("${ayat[i]}")
          .contains(hasArabicCharacters("$text"))) {
        foundaya.add("${ayat[i]}");
        foundraqem.add("${raquemayat[i]}");
        foundsafha.add(safhat[i]);
      }
    }
    setState(() {
      legnthh = foundaya.length;
      loading = false;
    });
    //return;
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        textAlign: TextAlign.center,
                        controller: textCont,
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10, left: 10),
                          labelText: "اكتب الاية",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        style: new TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                right: 40, left: 40, top: 5, bottom: 5),
                                 backgroundColor: Colors.black12,
                          ),


                          child: Text(
                            "بحث",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          onPressed: () {
                            alertTo("انتظر لحظة من فضلك ..");
                            setState(() {
                              loading = true;
                            });
                            _getALlPosts(textCont.text.trim());
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 120,
                  child: loading
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: legnthh,
                          //physics: NeverScrollableScrollPhysics(),
                          // cancellationWidget: Text("Cancel"),
                          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          // childAspectRatio: 1.0,
                          // mainAxisSpacing: 10,
                          // crossAxisSpacing: 10,
                          // crossAxisCount: 1,
                          // ),

                          itemBuilder: (context, i) {
                            return cardSearch(
                                foundaya[i], foundraqem[i], foundsafha[i], i);
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardSearch(String title, String aya, int safha, int index) {
    return GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(initialPage: safha)),
            (Route<dynamic> route) => false,
          );
        },
        onLongPress: () {
          Clipboard.setData(new ClipboardData(text: title));
          alertTo("copied");
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 8),
            color: Colors.black12,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontFamily: "quran",
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "سورة : ${swraNameList[listOfNameSwraPerPages[(safha) - 1]]}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: "quran",
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "آية : $aya",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: "quran",
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "صفحة رقم : $safha",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: "quran",
                            fontWeight: FontWeight.w600),
                      ),
                    ])
              ]),
            )
            // onTap: () {
            //   //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
            // },

            ));
  }

  getDataJson() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("data/data.json");
    List jsonResult = json.decode(data);
    print(jsonResult.length);
    for (var i = 0; i < jsonResult.length; i++) {
      ayat.add("${jsonResult[i]["content"]}");
      raquemayat.add("${jsonResult[i]["verse_number"]}");
      safhat.add(jsonResult[i]["safha"]);
    }
    setState(() {
      ayat = ayat;
      raquemayat = raquemayat;
      safhat = safhat;
    });
  }
}

// ClipRRect(
//                 borderRadius: BorderRadius.circular(40),
//                               child: ElevatedButton(
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
