import 'package:flutter/material.dart';

enum DeveloperInfo{ frontEnd, backEnd }

class DeveloperInfoButtonWidget extends StatefulWidget {
  DeveloperInfoButtonWidget({Key key}) : super(key : key);

  @override
  DeveloperInfoButtonState createState() => DeveloperInfoButtonState();
}

class DeveloperInfoButtonState extends State<DeveloperInfoButtonWidget> {

  @override
  Widget build(BuildContext context) {
   return new Column (
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Icon(Icons.person),
            new FlatButton(
              onPressed: () {
                openDialog();
              },
              child: 
              Text('Developer Info',
              style: TextStyle(fontSize: 30.0)
              ),
            ),
          ],
        ),
      ],
    );
  }
  //void developerInfoDialog() {
  Future<void> openDialog() async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Developer Info'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, DeveloperInfo.frontEnd);
              },
              child: const Text('Front End')
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, DeveloperInfo.backEnd);
              },
              child: const Text('Back End')
            )
          ],
        );
      }
    )) {
    case DeveloperInfo.frontEnd:
      print('Eason Lu, Alexa Hu');
      break;
    case DeveloperInfo.backEnd:
      print('Chenhui Zhang, Yihong Jian');
      break;
    }
  }
}