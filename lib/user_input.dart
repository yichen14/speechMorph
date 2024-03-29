import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInputWidget extends StatefulWidget{
  UserInputWidget({Key key}) : super(key: key);

  @override
  UserInputState createState() => UserInputState();
}

class UserInputState extends State<UserInputWidget>{
  String userInput = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(hintText: "Please enter ur text here"),
            onChanged: (String textInput) {
              setState(() {
                userInput = textInput;
                //backend Operation
              });
            },
          )
        ],
      ),
    );
  }
}