import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
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
              'إسلامي' ,
              style: Theme.of(context).textTheme.headline1 ,
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Image.asset('assets/images/quraan.png',

                ),
                Divider(
                  thickness: 3.0,
                  color: Color.fromRGBO(183, 147, 95, 1.0),

                ),
                Text(
                  'اسم السورة',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Divider(
                  thickness: 3.0,
                  color: Color.fromRGBO(183, 147, 95, 1.0),

                ),

              ],
            ),

          ),

        ),

      ],
    );
  }
}
