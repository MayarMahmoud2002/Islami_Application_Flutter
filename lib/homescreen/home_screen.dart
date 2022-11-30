import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/ahadeth/ahadeth_screen.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/quraan/quraan_screen.dart';
import 'package:islaami_project/radio/radio_screen.dart';
import 'package:islaami_project/sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
        fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:
            Text
              (
              'إسلامي' ,
              style: Theme.of(context).textTheme.headline1 ,
            ),
          ),
          body:screens[currentIndex] ,
          bottomNavigationBar:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index)
            {
              currentIndex = index;
              setState(() {

              });
            },
            items:
            [
              BottomNavigationBarItem(
                  icon:
                  ImageIcon(AssetImage('assets/images/moshaf.png',)
                  ),
              label: 'القران',
              ),
              BottomNavigationBarItem(
                icon:
                ImageIcon(AssetImage('assets/images/ahadeth.png',)
                ),
                label:'الأحاديث',
              ),
              BottomNavigationBarItem(
                icon:
                ImageIcon(AssetImage('assets/images/radio.png',)
                ),
                label: 'الراديو',
              ),
              BottomNavigationBarItem(
                icon:
                ImageIcon(AssetImage('assets/images/sebha.png',)
                ),
                label: 'السبحه',
              ),

            ],)  ,

        ),

      ],
    );
  }
  List <Widget> screens =
  [
    QuraanScreen(),
    AhadethScreen(),
    RadioScreen(),
    SebhaScreen(),
  ];
}
