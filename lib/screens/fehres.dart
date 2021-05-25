
import 'package:flutter/material.dart';
import 'package:quran/lists/swraNameList.dart';
import 'package:quran/screens/homePage.dart';

class Fehres extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemBuilder: 
        (context,index){
          return cardOfFehres(context,swraNameList[index], swraPageStart[index]);
        },
        itemCount: swraNameList.length,
        )),
      )
    );
  }
  Widget cardOfFehres(context,name,numb){
    return GestureDetector(
          onTap: (){
            Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:numb)),
          (Route<dynamic> route) => false,
        );
          },
          child: Stack(
        children: <Widget>[
          ColorFiltered(
            colorFilter:ColorFilter.mode(Colors.orange[100], BlendMode.color),
                    child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Image(fit: BoxFit.fill,image: AssetImage("images/001.jpg")),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top:5),
            height: 70,
              width: MediaQuery.of(context).size.width,
              child:Text("$name",style: TextStyle(fontSize:26 ,color: Colors.black54 , fontFamily:"quran" , fontWeight: FontWeight.w600 ),)
          )
        ],
      ),
    );
  }
}