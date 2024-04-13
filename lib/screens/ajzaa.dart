
import 'package:flutter/material.dart';
import 'package:quran/lists/listOfParts.dart';
import 'package:quran/screens/homePage.dart';

class Fehress extends StatelessWidget {
  List<String> images = ['images/1.jpg','images/2.jpg','images/3.jpg','images/4.jpg','images/5.jpg',
  'images/6.jpg','images/7.jpg','images/8.jpg','images/9.jpg','images/10.jpg','images/11.jpg','images/12.jpg',
  'images/1311.jpg','images/1411.jpg','images/1511.jpg','images/1611.jpg','images/1711.jpg','images/1811.jpg',
  'images/1911.jpg','images/2011.jpg','images/2111.jpg','images/2211.jpg','images/2311.jpg','images/2411.jpg',
  'images/2511.jpg','images/2611.jpg','images/2711.jpg','images/2811.jpg','images/2911.jpg','images/3011.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context,index){
            return parts(context, images[index],index);
          }
          
          )
          
            
      ),
    );
  }
  Widget parts(context , image , index){
    return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[50],
                    ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(initialPage:listOfIndexParts[index])),
          (Route<dynamic> route) => false,
        );
                  },
                  child: Container(
                      height: 75,
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(image)  ,
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                );
  }
}
