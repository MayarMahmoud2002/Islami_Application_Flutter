import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Image.asset('assets/images/radio_main.png'),
        ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'إذاعة القران الكريم',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Row(
            children: [
              ImageIcon(
                AssetImage(''),
              )
            ],
          ),
        ],
      ),
    );
  }
}
