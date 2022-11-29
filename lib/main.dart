import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/homescreen/home_screen.dart';
import 'package:islaami_project/my_theme/my_theme.dart';

void main ()
{
  return runApp(MyApplication());
}
class MyApplication extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light ,

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes:
      {
        HomeScreen.routeName : (h) => HomeScreen(),
      } ,
    );

  }

}