import 'package:flutter/material.dart';

class HadethTheme extends StatelessWidget {
  String hadeth ;
  HadethTheme (this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Text(hadeth ,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
        fontSize: 25.0,
        color: Colors.black,

      ),);
  }
}
