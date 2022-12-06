import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatefulWidget {
static const String routeName = 'sebhaScreen';

  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
int counterNumbers = 0 ;
int counterTabs = 0;
int index = 0 ;
List <String> textsTabs =
[
  'سبحان الله',
  'الحمد لله',
  'استغفر الله',
  'لا اله الا الله',
  'الله أكبر',
];

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);

    return Column(
      children: [
        Center(
          child: Container(

            padding: EdgeInsets.only(top: 40.0),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/body_of_sebha.png',
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                    child: Image.asset('assets/images/head_of_sebha.png',
                      height: 100.0,
                      width: 100.0,
                    )),
//                   color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorWhite,
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 30.0,
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            AppLocalizations.of(context)!.the_number_of_praises,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: prooo.mode == ThemeMode.dark ? MyThemeData.colorPrimaryDark : MyThemeData.colorgold,

                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 70.0,
                width: 70.0,
                child: Center(
                  child: Text (
                    '$counterNumbers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: InkWell(
                  onTap: ()
                  {
                    counterNumbers++;
                    if (counterNumbers == 35 )
                    {
                      counterNumbers =0 ;
                      index ++;
                    }
                    // counterNumbers ++;
                    // if (counterNumbers == 11)
                    // {
                    //   counterNumbers = 0;
                    //   index++;
                    // }else if (counterNumbers == 21)
                    // {
                    //   counterNumbers = 0;
                    //   index ++;
                    // }else if (counterNumbers == 31)
                    // {
                    //   counterNumbers =0 ;
                    //   index++;
                    //
                    // }else if (index == textsTabs.length)
                    // {
                    //   counterNumbers = 0;
                    //   counterNumbers++;
                    //   index++;
                    // }
                    // counterTabs++;
                    setState(() {

                    });





                  },
                  child: Container(
                    height: 50.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(202, 181, 152, 1.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                      child: Text(
                        '${textsTabs[index]}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),



      ],
    );

  }

}
