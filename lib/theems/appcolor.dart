import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors{

 static Color primaryColor =  Color.fromRGBO(120, 148, 97, 10);// icons
 static Color secondaryColor = Color.fromRGBO(191, 216, 175, 10);
//  static Color tertiaryColor = Color.fromRGBO(100, 56, 67,10); //icons
   static Color backgroundColor = Color.fromRGBO(225, 240, 218, 10);
 static Color TextColor = Colors.black;
 static Color navbutton = Color.fromRGBO(17, 66, 50, 10);
 static Color navitem = Colors.white;
bool isdark=false;
setmodel(){
  isdark=!isdark;
  isdark? backgroundColor=Colors.black:backgroundColor=Colors.white;
  isdark? primaryColor=Colors.amber:primaryColor=Colors.red;
  isdark? secondaryColor=Colors.blue:secondaryColor=Colors.green;
}



}