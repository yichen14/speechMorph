import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'choose_style_button.dart';
import 'developer_info_button.dart';
import 'text_section.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return Text("This is Settings Page");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEFE9CC),
        body: Stack (
          children: <Widget> [
            new Column (
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  new Container(
                    height:ScreenUtil.getInstance().setHeight(130),
                  ),
                  Text(
                      "Settings",
                    style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange,
                    )
                  ),
                  new Container(
                    height:ScreenUtil.getInstance().setHeight(40),
                  ),
                  new Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  new Container(
                    height:ScreenUtil.getInstance().setHeight(40),
                  ),
                  ChooseStyleButtonWidget(),
                  DeveloperInfoButtonWidget(),
                ]
            )
          ],
        ),
      ),
    );
  }
}