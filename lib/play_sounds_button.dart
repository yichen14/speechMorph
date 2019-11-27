import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaySoundsWidget extends StatefulWidget{
  PlaySoundsWidget({Key key}) : super(key: key);

  @override
  PlaySoundsState createState() => PlaySoundsState();
}

class PlaySoundsState extends State<PlaySoundsWidget>{

  void _onPressed() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
            child: new Container(
              width: 190,
              height: 190,
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: _onPressed,
                child: Image.asset("SpeechMorphAssets/images/button.png"),

              ),
            )
          ),
    );

  }
}