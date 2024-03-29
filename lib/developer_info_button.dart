import 'package:flutter/material.dart';
import 'text_section.dart';

enum DeveloperInfo{ frontEnd, backEnd,title }

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
            new Icon(Icons.assignment_ind),
            new FlatButton(
              onPressed: () {
                openDialog();
              },
              child:
              Text(
                  "Developer Info",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  )
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> openDialog() async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: <Widget>[
            SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, DeveloperInfo.title);
                },
                child: const Text(
                    'Memebers Info:',
                    style:TextStyle(
                        fontSize: 30
                    )
                )
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, DeveloperInfo.frontEnd);
              },
              child: const Text(
                  'Front End: Eason Lu, Alexa Hu',
                  style:TextStyle(
                    fontSize: 20
                  )
              )
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, DeveloperInfo.backEnd);
              },
              child: const Text(
                  'Back End: Chenhui Zhang, Yihong Jian',
                  style:TextStyle(
                      fontSize: 20
                  )
              )
            )
          ],
        );
      }
    )) {
    }
  }
}