import 'package:flutter/material.dart';

class AyaTheme extends StatelessWidget {
  String aya ;
  AyaTheme (this.aya);

  @override
  Widget build(BuildContext context) {
    return Text(aya ,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
      fontSize: 30.0,
      color: Colors.black,

    ),);
  }
}
