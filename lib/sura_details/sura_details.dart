import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'aya_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
static const String routeName = 'SuraDetailsScreen';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails ;
    if (verses.isEmpty)
    {
      LoadFile(args.index);

    }
    return Stack(
      children: [
      Image.asset('assets/images/main_background.png',
      fit: BoxFit.fill,
      width: double.infinity,
    ),
      Scaffold(
    backgroundColor: Colors.transparent,
      appBar: AppBar(
    title:
    Text
    (
      '${args.name}',
    style: Theme.of(context).textTheme.headline1 ,
    ),
    ),
        body:verses.isEmpty? Center(child: CircularProgressIndicator()): ListView.builder(
            itemCount: verses.length,
            itemBuilder: (context ,index )
        {
          return AyaTheme(verses[index]);
        }),
    ),
    ]
    );
  }

  void LoadFile (int index) async
  {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List <String> lines = content.split('\n');
    print (lines);
    verses = lines;
    setState(() {

    });

  }
}
class SuraDetails
{
  String name;
  int index ;
  SuraDetails (this.name , this.index);
}
