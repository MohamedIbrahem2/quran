import 'package:flutter/material.dart';
import 'package:quran/lists/listOfNameSwraPerPages.dart';
import 'package:quran/lists/swraNameList.dart';
import 'package:quran/screens/homePage.dart';


class FehresPages extends StatelessWidget{
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
          return cardOfFehres(context,swraNameList[listOfNameSwraPerPages[index]], index+1 ,listOfNameSwraPerPages[index]);
        },
        itemCount: listOfNameSwraPerPages.length,
        )),
      )
    );
  }
  Widget cardOfFehres(context,name,numb,noOfSwra){
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
            colorFilter:ColorFilter.mode(Colors.orange[100]!, BlendMode.color),
                    child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Image(fit: BoxFit.fill,image: AssetImage("images/0020.jpg")),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 70,
              width: MediaQuery.of(context).size.width,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text("$noOfSwra",style: TextStyle(fontSize:26 ,color: Colors.white , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                    width:60,
                    height:72,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("$name",style: TextStyle(fontSize:26 ,color: Colors.white , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("$numb",style: TextStyle(fontSize:26 ,color: Colors.white , fontFamily:"quran" , fontWeight: FontWeight.w600 ),),
                    width:60,
                    height:72,
                    color: Colors.black87,
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}