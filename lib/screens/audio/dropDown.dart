import 'package:flutter/material.dart';

Widget dropDown(Function? onChanged(value), List<String> members , BuildContext context , String value) {
  return Container(
    color: Colors.black12,
    height: 40,
    width: MediaQuery.of(context).size.width*0.7,
    margin: EdgeInsets.only(bottom: 10),
    child: DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child:DropdownButton<String>(
      value: value,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Theme.of(context).primaryColor , fontSize: 16),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: onChanged,
      items: members
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
  )));
}
