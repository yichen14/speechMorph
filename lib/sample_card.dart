import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'text_section.dart';

class CardSection extends StatelessWidget {
  final String soundAsset;
  final String ch;
  final String eng;
  int playOrNot = 0;
  CardSection(this.ch, this.eng,this.soundAsset);
  AudioPlayer audioPlayer = AudioPlayer();
  play(String _soundAsset) async {
    int result = await audioPlayer.play(_soundAsset);
    if (result == 1) {
      // success
    }
  }
  stop() async {
    int result = await audioPlayer.stop();
  }
  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(width: 1080, height: 2280)..init(context);
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      elevation: 12.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),

        onTap: () {
          print('Card tapped.');
          if(playOrNot%2 ==0){
            playOrNot++;
            play(soundAsset);
          }
          else{
            playOrNot++;
            stop();
          }
        },
        child: Container(
          color: Color(0xFFEADEA6),
          width: 400,
          height: 150,
          child: Column(
            children: <Widget>[
              new Container(
                height:ScreenUtil.getInstance().setHeight(50),
              ),
              TextSection(ch,40),
              TextSection(eng,40)
            ],
          ),
        ),
      ),
    );

  }
}