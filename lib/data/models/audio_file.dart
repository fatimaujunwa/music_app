import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
 final AudioPlayer audioPlayer;
   AudioFile({Key? key,required this.audioPlayer}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration duration=new Duration();
  Duration position=new Duration();
  List<Widget>icon=[
    Icon(Icons.pause),
  Icon(Icons.play_arrow)
  ];
  final String path='https://elements.envato.com/the-electronica-TQF9PKR?utm_source=mixkit&utm_medium=referral&utm_campaign=elements_mixkit_cs_music_genre&_ga=2.59531757.1322418503.1651752138-357763263.1651752138';
  bool playing=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this.widget.audioPlayer.onDurationChanged.listen((Duration dd) { //plays after a max value is set
      setState(() {
        duration=dd;
      });
    });
    this.widget.audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position=dd;
      });//updates the value every seconds and plays

    });
    this.widget.audioPlayer.setUrl(path);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            loadAsset(),
          ],
        ),
      ),
    );
  }
  Widget btnStart(){
    return IconButton(onPressed:(){
      this.widget.audioPlayer.play(path);
print('tapped');
    }, icon: icon[1]

    );
  }
  Widget loadAsset(){
    return Container(
      margin: EdgeInsets.only(top: 300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          btnStart(),
        ],
      ),
    );
  }
}
