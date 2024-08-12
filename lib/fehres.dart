import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/lists/swraNameList.dart';

import 'screens/homePage.dart';

class Fehres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[0])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.centerRight,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],

                        child: Text(
                          'سورة الفاتحه  Alfateha',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '7',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[1])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة البقره  Albaqra',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '286',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة آل عمران  Al emran',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '200',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[1 + 2])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النساء  ’Alnesaa',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '176',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 3])), //Todo
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المائده  Almaa’ida',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '120',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 2])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانعام  Ala’naam',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '165',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 4])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاعراف  Ala’raf',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '206',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 5])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانفال  Ala’nfal',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '75',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 6])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التوبه  Altawba',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '129',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 7])),
                      (Route<dynamic> route) => false,
                    );
                  }, //
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة يونس  Younes',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '109',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 8])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة هود  Houd',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '123',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 9])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة يوسف  Yousef',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '111',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 10])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الرعد  Alraad',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '43',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 11])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة ابراهيم  Ibraheem',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '52',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 12])),
                      (Route<dynamic> route) => false,
                    );
                  }, //
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحجر  Alhajr',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '99',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 13])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النحل  Alnahl',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '128',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 14])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاسراء  ’Alesraa',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '111',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 15])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الكهف  Alkahf',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '110',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 16])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة مريم  Mariam',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '98',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 17])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة طه  Taha',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '135',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 18])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانبياء  Ala’nbiaa',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '112',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              initialPage: swraPageStart[1 + 1 + 19])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحج  Al-hajj',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنية',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '78',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[2 + 20])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المؤمنون  Almoa’menon',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '118',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 20])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النور  Alnoor',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '64',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 21])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الفرقان  Alforqan',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '77',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 22])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الشعراء  Alshoaraa',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '227',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 23])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النمل  Alnaml',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '93',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 24])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القصص  Alqasas',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '88',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 25])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة العنكبوت  Alankabot',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '69',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 26])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الروم  Alroom',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '60',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 27])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة لقمان  Loqman',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '34',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 28])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة السجده  Alsajda',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '30',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 29])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاحزاب  Ala’hzab',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '73',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 30])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة سبأ  ’Saba',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '54',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 31])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة فاطر  Fater',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '45',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 32])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة يس  Yasien',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '83',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 33])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الصافات  Alsaffat',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '182',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 34])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة ص  Saad ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '88',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 35])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الزمر  Alzomar ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '75',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 36])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة غافر  ghafer ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '85',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 37])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة فصلت  Fosselat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '54',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 38])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الشوري  Alshora ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '53',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 39])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الزخرف  Alzokhrof ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '89',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 40])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الدخان  Aldokhan ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '59',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 41])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الجاثيه  Aljathia ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '37',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 42])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاحقاف  Ala’hqaf ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '35',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 43])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة محمد  Mohamad ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '38',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 44])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الفتح  Alfath ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '29',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 45])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحجرات  Alhojorat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '18',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 46])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة ق   Qaf ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '45',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 47])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الذاريات   Alzariat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '60',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 48])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الطور   Altour ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '49',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 49])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النجم   Alnajm ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '62',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 50])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القمر  Alqamar ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '55',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 51])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الرحمن  Alrahman ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '78',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 52])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الواقعه  Alwaqea ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '96',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 53])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحديد  Alhaded ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '29',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 54])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المجادله  Almojadla ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '22',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 55])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحشر  Alhashr ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '24',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 56])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الممتحنه  Almomtahana ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '13',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 57])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الصف Alsaf ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '14',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 58])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الجمعه Aljomaa ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '11',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 59])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المنافقون Almonafqon ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '11',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 60])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التغابن Altghabon ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '18',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 61])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الطلاق ِ Altalaq ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '12',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 62])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التحريم ِ Altahreem ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '12',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 63])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الملك ِ Almolk ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '30',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 64])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القلم ِ Alqalam ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '52',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 65])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الحاقه  Alhaqqa ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '52',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 66])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المعارج  Almaarej ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '44',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 67])),
                      (Route<dynamic> route) => false,
                    );
                  }, //TOD
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة نوح  Nooh ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '28',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 68])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الجن  Aljen ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '28',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 69])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المزمل  Almozzamel ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '20',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 70])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المدثر  Almoddaser ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '56',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 71])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القيامه  Alqyama ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '40',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 72])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانسان  Ala’ensan ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '31',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 73])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المرسلات  Almorslat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '50',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 74])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النبأ  ’Alnaba ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '40',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 75])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النازعات  Alnazeat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '46',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 76])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة عبس   Abas ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '42',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 77])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التكوير   Altakweer ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '29',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 78])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانفطار   Ala’enftar ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '19',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 79])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المطففين Almotafefen ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '36',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 80])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الانشقاق Alaa’ensheqaq ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '25',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 81])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة البروج Alboroj ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '22',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 82])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الطارق Altareq ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '17',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 83])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاعلي Ala’ala ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '19',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 84])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الغاشيه Alghashia ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '26',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 85])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الفجر Alfajr ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '30',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 86])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة البلد  Albalad ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '20',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 87])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الشمس  Alshams ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '15',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 88])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الليل  Al Lail ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '21',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 89])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الضحي  Al Doha ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '11',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[3 + 90])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الشرح  Al sharh ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[94])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التين  Al Teen ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[95])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة العلق  Al Alaq ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '19',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[96])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القدر  Al Qadr ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[97])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة البينه  Albaiena ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[98])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الزلزله  Alzalzla ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[99])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة العاديات  Aladeat ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '11',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[100])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة القارعه  Alqarea ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '11',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[101])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة التكاثر  Altakathor ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[102])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة العصر  Alasr ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[103])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الهمزه  Alhomaza ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '9',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[104])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الفيل  Alfeel ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[105])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة قريش  Quraish ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '4',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[106])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الماعون  Almaoon ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '7',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[107])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الكوثر  Alkawther ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[108])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الكافرون  Alkafroon ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '6',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[109])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة النصر  Alnasr ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مدنيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[110])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة المسد  Almasad ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[111])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الاخلاص Ala’ekhlas ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '4',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[112])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الفلق Alfalaq ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '5',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[50],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(initialPage: swraPageStart[113])),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width * .65,
                        color: Colors.orange[50],
                        child: Text(
                          'سورة الناس  Alnas ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          'مكيه',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: MediaQuery.of(context).size.width * .13,
                        color: Colors.black54,
                        child: Text(
                          '6',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
