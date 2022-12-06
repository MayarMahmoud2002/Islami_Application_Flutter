import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetLang extends StatelessWidget {
  const BottomSheetLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    // var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          InkWell(
            onTap: ()
            {
              provider.changeLanguage('ar');

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 30.0,
                    color: provider.languageCode=='ar'? MyThemeData.colorgold : MyThemeData.colorblack,
                  ),

                ),
                Icon(
                  Icons.done,
                  color: provider.languageCode=='ar'? MyThemeData.colorgold : MyThemeData.colorblack,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          InkWell(
            onTap: ()
            {
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 30.0,
                    color: provider.languageCode=='en'? MyThemeData.colorgold : MyThemeData.colorblack,

                  ),

                ),
                Icon(
                  Icons.done,
                  color: provider.languageCode=='en'? MyThemeData.colorgold : MyThemeData.colorblack,

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
