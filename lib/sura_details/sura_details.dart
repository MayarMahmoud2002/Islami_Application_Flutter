import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islaami_project/my_theme/my_theme.dart';
import 'package:islaami_project/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'aya_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        prooo.getBackground(),
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: prooo.mode == ThemeMode.dark ? MyThemeData.colorSecondryDark : MyThemeData.colorgold,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    )),
                padding: EdgeInsets.all(1.0),
                margin: EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return AyaTheme(verses[index]);
                    }),
              ),
      ),
    ]);
  }

  void LoadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    print(lines);
    verses = lines;
    setState(() {});
  }
}

class SuraDetails {
  String name;
  int index;

  SuraDetails(this.name, this.index);
}
