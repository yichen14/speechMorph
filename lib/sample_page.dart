import 'package:flutter/material.dart';
import 'package:test_app/sample_card.dart';
import 'package:test_app/text_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_layout.dart';
import 'package:audioplayers/audioplayers.dart';

class SamplePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    int playOrStop = 0;
    ScreenUtil.instance = ScreenUtil(width: 1080, height: 2280)..init(context);
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Color(0xFFEFE9CC),
        body: new Stack(
          children: <Widget>[
            //BaseLayout("SpeechMorphAssets/images/sample_bgd.png"),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  height:ScreenUtil.getInstance().setHeight(130),
                ),
                Text(
                    "Project Sample",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                    )
                ),
                new Container(
                  height:ScreenUtil.getInstance().setHeight(80),
                ),
                CardSection("宁好 [ning hao]","Hello!",'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
                CardSection("吃了吗 [chi le ma]","Do u eat the dinner?",'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
                CardSection("晚安 [wan an]","Goodnight",'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
              ],
            ),
          ],
        )
      ),
    );
  }
}