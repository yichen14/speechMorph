import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {

  final String _text;
  /*TextSection(Color color){
    _color = color;
  }*/
  TextSection(this._text);

  @override
  Widget build(BuildContext context){
    return Container(

      child: Text(
          _text,
          style: TextStyle(
        color: Colors.white,
            fontSize: 40,
        ),
        textAlign: TextAlign.center,
      ),
    );

  }
}