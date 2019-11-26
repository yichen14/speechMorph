
import 'package:flutter/material.dart';
import 'package:test_app/base_layout.dart';
import 'package:test_app/play_sounds_button.dart';
import 'package:test_app/user_input.dart';
import 'text_section.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Flutter layout',
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: <Widget>[
            BaseLayout(),
            new Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  height:100,
                ),
                TextSection("Speech Morph"),
                new Container(
                  height:400,
                ),
                UserInputWidget(),
                GenerateButtonWidget(),
                new Container(
                  height:100,
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}