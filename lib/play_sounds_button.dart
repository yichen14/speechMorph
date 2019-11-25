import 'package:flutter/material.dart';

class GenerateButtonWidget extends StatefulWidget{
  GenerateButtonWidget({Key key}) : super(key: key);

  @override
  GenerateButtonState createState() => GenerateButtonState();
}

class GenerateButtonState extends State<GenerateButtonWidget>{

  void _onPressed() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
            children: <Widget>[
              RaisedButton(
                  child: new Text("Generate"),
                  color: Colors.blue,
                  onPressed: _onPressed,
              )
            ],
          )
        ),
      );

  }
}