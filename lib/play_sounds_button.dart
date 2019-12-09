import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class PlaySoundsWidget extends StatefulWidget{
  PlaySoundsWidget({Key key}) : super(key: key);

  @override
  PlaySoundsState createState() => PlaySoundsState();
}

class PlaySoundsState extends State<PlaySoundsWidget>{
  AudioPlayer audioPlayer = AudioPlayer();
  play() async {
    int result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    if (result == 1) {
      // success
    }
  }
  stop() async {
    int result = await audioPlayer.stop();
  }
  int playOrStop = 0;
  void _onPressed() {
    setState(() {
      if(playOrStop%2 ==0){
        playOrStop++;
        play();
      }
      else{
        playOrStop++;
        stop();
      }
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
                child: Image.asset("assets/images/button.png"),
              ),
            )
          ),
    );

  }
}