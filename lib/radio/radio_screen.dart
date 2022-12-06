import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0 , right: 20.0),
          child: Column(
            children: [
              Image.asset('assets/images/radio_main.png',),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  AppLocalizations.of(context)!.holy_quran_radio,
                  style: TextStyle(
                    fontSize: 20.0,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: ImageIcon(
                          AssetImage(
                              'assets/images/play_left.png',
                          ),
                          color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,

                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: ImageIcon(
                          AssetImage(
                            'assets/images/play.png',
                          ),
                          color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,

                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: ImageIcon(
                          AssetImage(
                            'assets/images/play_right.png',
                          ),
                          color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,

                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
