import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audio_cache.dart';

class CardSection extends StatelessWidget {
  final String soundAsset;
  final String ch;
  final String eng;
  int playOrNot = 0;
  CardSection(this.ch, this.eng,this.soundAsset);
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache player = AudioCache();
  play(String _soundAsset) async {
    player.play(_soundAsset);
  }
  stop() async {

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
                height:ScreenUtil.getInstance().setHeight(80),
              ),
              Text(
                ch,
                style: TextStyle(
                  fontSize: 30,
                  color: Color((0xFF75767E)),
                ),
              ),
              //TextSection(ch,40),
              new Container(
                height:ScreenUtil.getInstance().setHeight(30),
              ),
              Text(
                eng,
                style: TextStyle(
                  fontSize: 30,
                  color: Color((0xFFDDB57E)),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}