import 'package:flutter/material.dart';
import 'draftCode.dart';

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
                new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new StuffInTiles(listOfTiles[index]);
                  },
                  itemCount: listOfTiles.length,
                ),
                //ChooseStyleButtonWidget()
              ]
            )
          ],
        ),
      ),
    );
  }
}