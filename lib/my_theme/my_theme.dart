import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData {
  static const colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static const colorgold = Color.fromRGBO(183, 147, 95, 1.0);
  static const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const colorRed = Color.fromRGBO(255, 0, 0, 1.0);
  static const colorPrimaryDark = Color.fromRGBO(20, 26, 46, 1.0);
  static const colorSecondryDark = Color.fromRGBO(250, 204, 29, 1.0);




  //create two object light and dark theme
  //static before object to call it by name of class
  static ThemeData lightTheme = ThemeData(
    primaryColor:colorgold ,
    colorScheme: ColorScheme(
        primary: colorgold,
        primaryVariant: colorWhite,
        secondary: colorblack,
        secondaryVariant: colorWhite,
        surface: Colors.grey,
        background: Colors.transparent,
        error: colorRed,
        onPrimary: colorWhite,
        onSecondary: colorWhite,
        onSurface: Colors.grey,
        onBackground: colorblack,
        onError: colorWhite,
        brightness: Brightness.light,),


    backgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: MyThemeData.colorblack,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: colorblack,
      ),
      subtitle1: TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.bold, color: colorgold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorgold,
      selectedItemColor: colorblack,
      unselectedItemColor: colorWhite,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor:colorgold ,
    colorScheme: ColorScheme(
      primary: colorPrimaryDark,
      primaryVariant: colorPrimaryDark,
      secondary: colorSecondryDark,
      secondaryVariant: colorSecondryDark,
      surface: Colors.grey,
      background: Colors.transparent,
      error: colorRed,
      onPrimary: colorWhite,
      onSecondary: colorWhite,
      onSurface: Colors.grey,
      onBackground: colorSecondryDark,
      onError: colorWhite,
      brightness: Brightness.dark,),


    backgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: MyThemeData.colorblack,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: colorWhite,
      ),
      subtitle1: TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.bold, color: colorSecondryDark),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorPrimaryDark,
      selectedItemColor: colorSecondryDark,
      unselectedItemColor: colorWhite,
    ),
  );
}
