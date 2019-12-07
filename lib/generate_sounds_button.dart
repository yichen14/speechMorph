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
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
                  textColor: Colors.white,
                  splashColor: Colors.orange,
                  elevation: 10.0,
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