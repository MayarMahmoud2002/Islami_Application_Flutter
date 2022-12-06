

import 'package:flutter/material.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:islaami_project/setting/bottom_sheet_lang.dart';
import 'package:islaami_project/setting/bottom_sheet_theme.dart';
import 'package:provider/provider.dart';

class DesignOfSetting extends StatelessWidget {
  String language ;
  String theme ;

  DesignOfSetting({required this.language , required this.theme});


  static const String routeName = 'designOfSetting';

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var proo = Provider.of<MyProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: pro.languageCode=='en'?TextAlign.left : TextAlign.right ,
        ),
        SizedBox(
          height: 2.0,
        ),
        InkWell(
          onTap: ()
          {
            BottomSheetLanguage(context);

          },
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyThemeData.colorgold,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                pro.languageCode=='en'?AppLocalizations.of(context)!.english :
             AppLocalizations.of(context)!.arabic,

                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
                textAlign: pro.languageCode=='en'?TextAlign.left : TextAlign.right ,

              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Text(
          AppLocalizations.of(context)!.theme,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: pro.languageCode=='en'?TextAlign.left : TextAlign.right ,
        ),
        SizedBox(
          height: 2.0,
        ),
        InkWell(
          onTap: ()
          {
            BottomSheetTheme(context);
          },
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: MyThemeData.colorgold,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                proo.mode == ThemeMode.dark ?AppLocalizations.of(context)!.dark :
                AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
                textAlign: pro.languageCode=='en'?TextAlign.left : TextAlign.right ,

              ),
            ),
          ),
        ),
      ],
    );
  }
  void BottomSheetLanguage (context)
  {
    showModalBottomSheet(context: context, builder: (Context)
    {
      return BottomSheetLang();

    });

  }
  void BottomSheetTheme (context)
  {
    showModalBottomSheet(context: context, builder: (Context)
    {
      return BottomSheetThemee();

    });

  }
}
