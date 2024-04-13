import 'package:flutter/material.dart';

class Doaa extends StatelessWidget{
  final List<String> doaaImages = ["0001.jpg","0002.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
                itemCount: doaaImages.length,
              itemBuilder: 
              (context,index){
                return  SingleChildScrollView(
                  child: Column(
            children: <Widget>[ Container(
                  width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width > MediaQuery.of(context).size.height ?MediaQuery.of(context).size.height*3 :MediaQuery.of(context).size.height-25,
                  child: ColorFiltered(
                                    colorFilter: ColorFilter.mode(Colors.orange[50]!, BlendMode.darken),
                                    child: Container(
                    child: Image(fit:BoxFit.fill,image: AssetImage("images/${doaaImages[index]}")),
                  )),
                )]));
              }
              ),
      
            
          
        
    );
  }

}