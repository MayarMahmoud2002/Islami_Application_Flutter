import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:islaami_project/quraan/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class QuraanScreen extends StatelessWidget {

  static const String routeName = 'quraanScreen';

  List<String> SurasNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            'assets/images/quraan.png',
            height: 180.0,
            width: 180.0,
          ),
          Divider(
            thickness: 3.0,
            color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,
          ),
          Text(
              AppLocalizations.of(context)!.sura_name,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,
                  fontSize: 20.0,
                ),
          ),
          Divider(
            thickness: 3.0,
            color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: SurasNames.length,
              itemBuilder: (context, index) {
                return SuraNameItem(
                  SurasNames[index],
                  index,
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,
                thickness: 1.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
