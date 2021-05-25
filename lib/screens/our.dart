
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class A3mal extends StatefulWidget{
  @override
  _A3malState createState() => _A3malState();
}

class _A3malState extends State<A3mal> {
  String _copy = "giga-soft.com";
  String _copy2 = "quraan@giga-soft.com";

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      body:
      Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image:DecorationImage(fit:BoxFit.fill,image: AssetImage("images/01001.jpg"))
        ),
        child: Container(
          height: 300,
          width: 300,
          color: Color(0x99ffffff),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("للتواصل معنا يمكنك\n زيارة موقعنا",style: TextStyle(fontSize:22 ,),textAlign: TextAlign.center,),
                new GestureDetector(
                  child: new Text(_copy,style: TextStyle(fontSize:22),),
                  onTap: _launchURL,
                  onLongPress: () {
                    Clipboard.setData(new ClipboardData(text: _copy));
                    key.currentState.showSnackBar(
                        new SnackBar(content: new Text("تم النسخ للحافظة",style: TextStyle(fontSize:18)),));
                  },
                ),
                SizedBox(height:30),
                Text("او عن طريق الايميل",style: TextStyle(fontSize:20),textAlign: TextAlign.center,),
                new GestureDetector(
                  child: new Text(_copy2,style: TextStyle(fontSize:22),),
                  onTap: sendEmail,
                  onLongPress: () {
                    Clipboard.setData(new ClipboardData(text: _copy2));
                    key.currentState.showSnackBar(
                        new SnackBar(content: new Text("تم النسخ للحافظة",style: TextStyle(fontSize:18),),));
                  },
                ),
                
              ]),
        ),
      ),


    );
  }

  _launchURL() async {
  const url = 'https://giga-soft.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print( 'Could not launch $url');
  }
}
sendEmail() async {
    await launch("mailto:quraan@giga-soft.com?subject=السلام عليكم ورحمة الله وبركاته&body=");
  
}
}