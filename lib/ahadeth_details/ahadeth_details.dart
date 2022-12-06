import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islaami_project/ahadeth/hadethdata.dart';
import 'package:islaami_project/my_theme/my_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;

    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Color.fromRGBO(183, 147, 95, 1.0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                )),
            padding: EdgeInsets.all(1.0),
            margin: EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: args.content.length,
                itemBuilder: (context, index) {
                  return Text('${args.content[index]}',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: MyThemeData.colorblack,
                          ));
                }),
          ),
        )
      ],
    );
  }
}
