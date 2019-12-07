import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget{
  final String image;
  BaseLayout(this.image);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}