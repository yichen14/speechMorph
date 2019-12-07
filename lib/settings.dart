import 'package:flutter/material.dart';
import 'choose_style_button.dart';
import 'text_section.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return Text("This is Settings Page");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack (
          children: <Widget> [
            new Column (
              children: <Widget> [
                TextSection('Setting', 40),
                ChooseStyleButtonWidget()
              ]
            )
          ],
        ),
      ),
    );
  }
}
