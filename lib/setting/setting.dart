import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/setting/design.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Setting extends StatelessWidget {
static const String routeName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90.0,left: 20.0, right: 20.0 ),
      child: Column(
        children:
        [
          DesignOfSetting(
            language: AppLocalizations.of(context)!.arabic,
            theme: AppLocalizations.of(context)!.light,

          ),


        ],
      ),
    );
  }
}
