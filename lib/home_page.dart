import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/base_layout.dart';
import 'package:test_app/generate_sounds_button.dart';
import 'package:test_app/play_sounds_button.dart';
import 'package:test_app/user_input.dart';
import 'text_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 1080, height: 2280)..init(context);
    return MaterialApp(
      //title: 'Learning Flutter layout',
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: <Widget>[
            BaseLayout("SpeechMorphAssets/images/homepage_bgd.png"),
            new Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  height:ScreenUtil.getInstance().setHeight(300),
                ),
                TextSection("SpeechMorph",30),
                new Container(
                  height:ScreenUtil.getInstance().setHeight(10),
                ),
                PlaySoundsWidget(),
                new Container(
                  height:ScreenUtil.getInstance().setHeight(400),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSection("Generate Chinese Speech",15),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextSection("base on someone's speech that is in English",15),
                  ],
                ),
                new Container(
                  height:ScreenUtil.getInstance().setHeight(100),
                ),
                UserInputWidget(),
                new Container(
                  height:ScreenUtil.getInstance().setHeight(60),
                ),
                GenerateButtonWidget(),
              ],
            ),
          ],
        ),
      ),

    );
  }
}