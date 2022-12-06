import 'package:flutter/material.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

class AyaTheme extends StatelessWidget {
  String aya ;
  AyaTheme (this.aya);

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    return Text(aya ,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
      fontSize: 25.0,
        color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorblack,

    ),);
  }
}
