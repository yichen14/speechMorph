import 'package:flutter/material.dart';
import 'choose_style_button.dart';
import 'developer_info_button.dart';

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
                /*
                new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new StuffInTiles(listOfTiles[index]);
                  },
                  itemCount: listOfTiles.length,
                ),
                */
                ChooseStyleButtonWidget(),
                DeveloperInfoButtonWidget(),
              ]
            )
          ],
        ),
      ),
    );
  }
}