import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData
{
  static const colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static const colorgold = Color.fromRGBO(183, 147, 95, 1.0);




  //create two object light and dark theme
  //static before object to call it by name of class
  static ThemeData lightTheme = ThemeData(
  backgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
  color: Colors.transparent,
  centerTitle: true,
  elevation: 0.0,
  ),
  textTheme: TextTheme(
  headline1: TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold ,
  color: colorblack,
  ),
    subtitle1:TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold ,
      color: colorgold),
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorgold,
      selectedItemColor: colorblack,
      unselectedItemColor: Colors.white,
    ),

  );

  static ThemeData darkTheme = ThemeData(
    backgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
      ),
    ),

  );


}