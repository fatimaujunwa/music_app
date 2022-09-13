import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_constants/linear_gradient_container.dart';
import '../app_constants/textstyle.dart';


class MusicNowPlayingScreen extends StatefulWidget {
  const MusicNowPlayingScreen({Key? key}) : super(key: key);

  @override
  _MusicNowPlayingScreenState createState() => _MusicNowPlayingScreenState();
}

class _MusicNowPlayingScreenState extends State<MusicNowPlayingScreen> {
  List music=[
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying=event==PlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration=event;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        position=event;
      });
    });
  }

  final audioPlayer =AudioPlayer();
  bool isPlaying=false;
  Duration duration=Duration.zero;
  Duration position=Duration.zero;
  @override
  void dispose() {
    audioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
     body: Container(
        height: height,
       width: width,
       decoration: BoxDecoration(

         gradient: LinearGradient(colors:[
           Color(0xff12131C),
           Color(0xff423775),

         ] ,begin: Alignment.center,end: Alignment.bottomLeft)
       ),
    child: ListView.builder(
      itemCount: 1,
        itemBuilder: (_,i){
      return Column(
        children: [
          Row(
            children: [
              Container(child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,)),
              Expanded(child: Container()),
              Container(child: Text('NOW PLAYING',style: TextDimension.style18white,)),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.white,)
            ],
          ),
          SizedBox(height: 40,),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30,),
                width: 240,
              height: 287,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1e1a34)
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.45,left: 20),
                width: 260,
                height: 287,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff282344)
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20,),
                  child: LinearGradientContainer(

                      width:280, height: 287.14, images: 'images/ing.png', innerHeight: 287.14, innerWidth: 280, marginRight: 20, radius: 10, innerRadius: 10, onPressed: () {  },)),

            ],
          ),
          SizedBox(height: 70,),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/mute icon.png')),
                ),
                Expanded(child: Container()),
                Icon(FontAwesomeIcons.heart,color: Colors.white,size: 16,)
              ],
            ),
          ),
          Text('Indigo',style:TextDimension.style18white ,),
          SizedBox(height: 10,),
          Text('Chris brown - Don\'t wake me up',style:TextDimension.style12white ,),
          SizedBox(height: 30,),
          Slider(
            value: position.inSeconds.toDouble(),

            max: duration.inSeconds.toDouble(),
            onChanged: (value)async{
              final position=Duration(seconds: value.toInt());
              await audioPlayer.seek(position);

              await audioPlayer.resume();

            },

            // max: duration.inSeconds.toDouble(),
            // divisions: 100,
            activeColor: Colors.white,
            inactiveColor:Color(0xff2d274e) ,
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('0.30',style: TextDimension.style14white,),
                Expanded(child: Container()),
                Text('2.24',style: TextDimension.style14white,),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10,),
              height: 20,width: 20,
            child: Image(image: AssetImage('images/shuffle.png')),),
            Expanded(child: Container()),
            Container(
              height: 90,
              width: 250,

              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  height: 50,width: 50,
                  child: Image(image: AssetImage('images/previous.png')),),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height:100 ,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/pausebtn.png')
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IconButton(onPressed: () async {
                        if(isPlaying){
                          await audioPlayer.pause();
                        }
                        else{
                          String url="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3";
                          await audioPlayer.play(url);
                        }

                      },
                        icon:Icon(isPlaying ? Icons.pause :Icons.play_arrow,),
                        iconSize: 50,
                        color: Colors.white,



                      ),
                    ),
                  ),
                ),
                // CircleAvatar(
                //   radius: 35,
                //   child: IconButton(onPressed: () async {
                //     if(isPlaying){
                //       await audioPlayer.pause();
                //     }
                //     else{
                //       String url="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3";
                //       await audioPlayer.play(url);
                //     }
                //
                //   },
                //     icon:Icon(isPlaying ? Icons.pause :Icons.play_arrow,),
                //     iconSize: 50,
                //
                //
                //
                //   ),
                //
                // ),
                Expanded(child: Container()),
                Container(

                  height: 50,width: 50,
                  child: Image(image: AssetImage('images/fword.png')),),
              ],),
            ),
            Expanded(child: Container()),
            Container(margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.repeat,color: Colors.white,))
          ],)



        ],
      );
    }
    ),  ),
    );
  }

//   Future<void> getAudio() async {
//     var url='https://www.epidemicsound.com/track/QSHuomK12P/';
// audioPlayer.setUrl(url);
//
//     if(playing){
//       print(playing.toString());
//       var res=await audioPlayer.play(url,isLocal: true);
//       if(res==1){
//         setState(() {
//           playing=!playing;
//         });
//         print(playing.toString());
//       }
//       else{
//         print('does not work');
//       }
//     }
//     else{
//       var res=await audioPlayer.pause();
//       if(res==1){
//         setState(() {
//           playing=false;
//         });
//     }
//   }
//   audioPlayer.onDurationChanged.listen((Duration dd) { //plays after a max value is set
//     setState(() {
//       duration=dd;
//     });
//   });
//     audioPlayer.onAudioPositionChanged.listen((Duration dd) { //updates the value every seconds and plays
//       position=dd;
//     });
//   }
}


