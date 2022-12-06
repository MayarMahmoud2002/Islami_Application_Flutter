// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetThemee extends StatelessWidget {
  const BottomSheetThemee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var proo = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          InkWell(
            onTap: ()
            {
              proo.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 30.0,
                    color: proo.mode == ThemeMode.light? Text == 'Light' ?
                    Theme.of(context).colorScheme.secondary:
                    Theme.of(context).colorScheme.primary:
                    Theme.of(context).colorScheme.primary
                  )

                ),
                Icon(
                  Icons.done,
                    color: proo.mode == ThemeMode.light? Text == 'Light' ?
                    Theme.of(context).colorScheme.secondary:
                    Theme.of(context).colorScheme.primary:
                    Theme.of(context).colorScheme.primary
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
              proo.changeTheme(ThemeMode.dark);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 30.0,
                      color: proo.mode == ThemeMode.dark? Text == 'Dark' ?
                      Theme.of(context).colorScheme.primary:
                      Theme.of(context).colorScheme.secondary:
                      Theme.of(context).colorScheme.secondary
                  ),

                ),
                Icon(
                  Icons.done,
                    color: proo.mode == ThemeMode.dark? Text == 'Dark' ?
                    Theme.of(context).colorScheme.primary:
                    Theme.of(context).colorScheme.secondary:
                    Theme.of(context).colorScheme.secondary
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
