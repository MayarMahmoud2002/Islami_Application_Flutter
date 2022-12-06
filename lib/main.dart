
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/ahadeth_details/ahadeth_details.dart';
import 'package:islaami_project/homescreen/home_screen.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:islaami_project/sebha/sebha_screen.dart';
import 'package:islaami_project/setting/setting.dart';
import 'package:islaami_project/sura_details/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main ()
{
  return runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create:(context) => MyProvider() ,
        ),
        ChangeNotifierProvider(
          create:(context) => MyProvider() ,
        ),

      ],
      child: MyApplication()));
}
class MyApplication extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var provider = Provider.of<MyProvider>(context);
    // var provider =Provider.of <MyProvider> (context); // object from provider
    return MaterialApp(
      locale: Locale(provider.languageCode),
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.mode ,

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes:
      {
        HomeScreen.routeName : (h) => HomeScreen(),
        SuraDetailsScreen.routeName : (s) => SuraDetailsScreen(),
        SebhaScreen.routeName : (sebha) => SebhaScreen(),
        HadethDetailsScreen.routeName : (H) => HadethDetailsScreen(),
        Setting.routeName : (D) => Setting(),
      } ,
    );

  }

}