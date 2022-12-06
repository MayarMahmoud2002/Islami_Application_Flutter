import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/ahadeth/ahadeth_screen.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:islaami_project/quraan/quraan_screen.dart';
import 'package:islaami_project/radio/radio_screen.dart';
import 'package:islaami_project/sebha/sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islaami_project/setting/setting.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          prooo.getBackground(),
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/moshaf.png',
                  ),
                ),
                label: AppLocalizations.of(context)!.quraan,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/ahadeth.png',
                )),
                label: AppLocalizations.of(context)!.ahadeth,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/radio.png',
                )),
                label:  AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/sebha.png',
                )),
                label:  AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label:  AppLocalizations.of(context)!.setting,
              ),


            ],
          ),
        ),
      ],
    );
  }

  List<Widget> screens = [
    QuraanScreen(),
    AhadethScreen(),
    RadioScreen(),
    SebhaScreen(),
    Setting(),
  ];
}
