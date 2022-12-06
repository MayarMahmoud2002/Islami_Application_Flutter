import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier //sbservable
{
  String languageCode = 'ar';
  ThemeMode mode = ThemeMode.light;

  String getBackground ()
  {
    if (mode == ThemeMode.light)
    {
      return 'assets/images/main_background.png';
    }else
    {
      return 'assets/images/bg.png';
    }
  }

  void changeLanguage (String lang)
  {
    languageCode = lang;
    notifyListeners();
  }
  void changeTheme (ThemeMode modee)
  {
    mode = modee ;
    notifyListeners();
  }

}