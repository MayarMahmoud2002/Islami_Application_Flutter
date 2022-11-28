import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/homescreen/home_screen.dart';

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
      initialRoute: HomeScreen.routeName ,
      routes:
      {
        HomeScreen.routeName : (h) => HomeScreen(),
      } ,
    );

  }

}