import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final double _size;
  final String _text;
  /*TextSection(Color color){
    _color = color;
  }*/
  TextSection(this._text, this._size);

  @override
  Widget build(BuildContext context){
    return Container(

      child: Text(
          _text,
          style: TextStyle(
        color: Colors.white,
            fontSize: _size,
        ),
        textAlign: TextAlign.center,
      ),
    );

  }
}