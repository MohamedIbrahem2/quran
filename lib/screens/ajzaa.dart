
import 'package:flutter/material.dart';
import 'package:quran/lists/listOfParts.dart';
import 'package:quran/screens/homePage.dart';

class Fehress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[0])),
          (Route<dynamic> route) => false,
        );
                  },
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('images/1.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[1])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[2])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/3.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[3])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/4.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[4])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/5.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[5])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/6.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[6])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/7.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[7])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/8.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[8])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/9.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[9])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/10.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[10])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/11.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[11])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/12.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[12])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1311.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[13])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1411.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[14])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1511.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[15])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1611.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[16])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1711.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[17])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1811.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[18])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/1911.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[19])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2011.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[20])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2111.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[21])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2211.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[22])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2311.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[23])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2411.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[24])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2511.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[25])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2611.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[26])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2711.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[27])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2811.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[28])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/2911.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[50],
                  onPressed: (){Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[29])),
          (Route<dynamic> route) => false,
        );},
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width*.95,
                      child: Image.asset('images/3011.jpg')  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                ),
              ],
            )
      ),
    );
  }
}
