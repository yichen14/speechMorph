import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'choose_style_button.dart';

=======
import 'draftCode.dart';
import 'choose_style_button.dart';
>>>>>>> 9b2eb8bb1ceb399a4890174cf68ebe36594dd56c
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
                Text('Setting',
                  style: TextStyle(fontSize: 40.0)
                ),
<<<<<<< HEAD
                /*
                new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new StuffInTiles(listOfTiles[index]);
                  },
                  itemCount: listOfTiles.length,
                ),
                */
=======

>>>>>>> 9b2eb8bb1ceb399a4890174cf68ebe36594dd56c
                ChooseStyleButtonWidget()
              ]
            )
          ],
        ),
      ),
    );
  }
}