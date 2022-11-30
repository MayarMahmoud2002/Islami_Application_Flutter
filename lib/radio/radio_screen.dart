import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 120.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0 , right: 20.0),
          child: Column(
            children: [
              Image.asset('assets/images/radio_main.png',),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'إذاعة القران الكريم',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: ImageIcon(
                        AssetImage(
                            'assets/images/play_left.png',
                        ),
                        color: Color.fromRGBO(183, 147, 95, 1.0),

                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    InkWell(
                      onTap: (){},
                      child: ImageIcon(
                        AssetImage(
                          'assets/images/play.png',
                        ),
                        color: Color.fromRGBO(183, 147, 95, 1.0),

                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    InkWell(
                      onTap: (){},
                      child: ImageIcon(
                        AssetImage(
                          'assets/images/play_right.png',
                        ),
                        color: Color.fromRGBO(183, 147, 95, 1.0),

                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
