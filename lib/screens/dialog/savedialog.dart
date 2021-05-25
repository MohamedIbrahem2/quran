import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}

class CustomSaveDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;
  final int page;

  CustomSaveDialog({
    @required this.page,
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });

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
  return Stack(
    children: <Widget>[
      Container(
  padding: EdgeInsets.only(
    top: Consts.avatarRadius + Consts.padding,
    bottom: Consts.padding,
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
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      
      SizedBox(height: 24.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop(); // To close the dialog
              },
              child: Text("كلا" ,style: TextStyle(fontSize:22, color:Colors.black87),),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              onPressed: () {
               AppState appState = Provider.of<AppState>(context,listen: false);
               appState.setPageOfSaved(page-1);
              _savedPage(page-1);
              Navigator.pop(context);// To close the dialog
              },
              child: Text(buttonText,style: TextStyle(fontSize:22, color:Colors.black87),),
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
  );
}

  _savedPage(int l) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int savedPage = l ;
  print(savedPage);
  await prefs.setInt('savedPage', savedPage);
 }
}

