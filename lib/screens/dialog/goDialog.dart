import 'package:flutter/material.dart';
import 'package:quran/screens/homePage.dart';


class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}

class CustomGoDialog extends StatelessWidget {
  final String title, buttonText;
  final Image image;

  CustomGoDialog({
    required this.title,
    required this.buttonText,
    required this.image,
  });

  final TextEditingController pagecont = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding),
      ),      
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
  dialogContent(BuildContext context) {
  return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.padding - 5,
          left: Consts.padding,
          right: Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.0),
             Form(
               key: _formKey,
               autovalidateMode: AutovalidateMode.always,
                      child: TextFormField(
                 textAlign: TextAlign.center,
                 controller: pagecont,
                              decoration: new InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10 , left: 10) ,
                                labelText: "اكتب رقم الصفحة",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                              ),
                              validator: (val) {
                                if(val!.length==0 || int.parse(val.trim()) > 604 || int.parse(val.trim()) <= 0) {
                                  return "لا توجد صفحة بهذا الرقم";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              style: new TextStyle(

                              ),
                            ),
             ),
            
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    child: Text("الغاء" ,style: TextStyle(fontSize:19, color:Colors.black87),),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(initialPage:int.parse(pagecont.text))),
                (Route<dynamic> route) => false,
              );
                      }
                    // To close the dialog
                    },
                    child: Text(buttonText,style: TextStyle(fontSize:19, color:Colors.black87),),
                  ),
                ),
              ],
            ),
          ],
        ),
),

Positioned(
        left: Consts.padding,
        right: Consts.padding,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: image,
          radius: Consts.avatarRadius,
        ),
),
          ],
        ),
      ],
    ),
  );
}
}

