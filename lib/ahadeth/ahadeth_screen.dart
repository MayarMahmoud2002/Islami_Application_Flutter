import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islaami_project/ahadeth/hadethdata.dart';
import 'package:islaami_project/ahadeth_details/ahadeth_details.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadethScreen extends StatefulWidget {
  static const String routeName = 'AhadethScreen';

  @override
  _AhadethScreenState createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      LoadFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 180.0,
          width: 180.0,
          child: Image(
            image: AssetImage(
              'assets/images/hadethpage.png',

            ),
          ),
        ),
        Column(
          children: [
            Divider(
              color: MyThemeData.colorgold,
              thickness: 3.0,
            ),
            Text(
          AppLocalizations.of(context)!.ahadeth,
              style: TextStyle(
                color: MyThemeData.colorgold,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(
              color: MyThemeData.colorgold,
              thickness: 3.0,
            ),
          ],
        ),

        Ahadeth.isEmpty
            ? CircularProgressIndicator()
            : Expanded(
              child: ListView.separated(
                  itemCount: Ahadeth.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: ()
                      {
                        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                        arguments: Ahadeth[index],
                        );
                      },
                      child: Text(Ahadeth[index].title,
                      textAlign: TextAlign.center,
                        style:TextStyle(
                          color: MyThemeData.colorblack,
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.black12,
                thickness: 1.0,
                indent: 30.0,
                endIndent: 30.0,
              ),),
            ),
      ],
    );
  }

  void LoadFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = content.split('#');
    for (int i = 0; i < ahadeth.length; i++) {
      String hadeth = ahadeth[i];
      print (hadeth);
      List<String> ahadethLines = hadeth.trim().split('\n');
      String title = ahadethLines[0];
      ahadethLines.removeAt(0);
      HadethData hadethData = HadethData(title, ahadethLines);
      Ahadeth.add(hadethData);
    }
    setState(() {

    });
  }
}

//       Ahadeth.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : Expanded(
//             child: ListView.separated(
//                 itemCount: Ahadeth.length,
//                 itemBuilder: (context, index) {
//                   return Text(Ahadeth[index].hadethtitle,
//                   textAlign: TextAlign.center,
//                   );
//
//                 }, separatorBuilder: ( context,index) => Divider(
//               color: Colors.black12,
//               thickness: 1.0,
//               indent: 30.0,
//               endIndent: 30.0,
//             ),
//
//               ),
//           )
//     ],
//   );
// }
//
// void loadHadethFile() async {
//   String content = await rootBundle
//       .loadString('assets/files/ahadeth.txt'); //all ahadeth of file
//   List<String> hadethlines = content.split('#'); // seperate all ahadeth
//   for (int i = 0; i < hadethlines.length; i++) {
//     String hadeth = hadethlines[i]; // first hadeth
//     List<String> hadethtitles =
//         hadeth.split('\n'); // seprate title about the body of hadeth
//     String hadethtitle = hadethtitles[i]; // first title of first hadeth
//     hadethlines.removeAt(0); // hadeth without title
//     HadethData hadethData = HadethData(hadethtitle, hadethlines);
//     Ahadeth.add(hadethData);
//   }
//   setState(() {});
// }
