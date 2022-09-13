import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/controllers/album_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../app_constants/textstyle.dart';
import '../app_constants/uri_elements.dart';

class MusicAlbumScreen extends StatefulWidget {
  final int pageId;
  const MusicAlbumScreen({Key? key, required this.pageId}) : super(key: key);

  @override
  _MusicAlbumScreenState createState() => _MusicAlbumScreenState();
}

class _MusicAlbumScreenState extends State<MusicAlbumScreen> {@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.pageId);

  }
  @override
  Widget build(BuildContext context) {
  var x=Get.find<AlbumsController>();
    var album=Get.find<AlbumsController>().albums[widget.pageId-1];
    Get.find<AlbumsController>().getSongs(widget.pageId);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
// print(x.songList.length);
    return Scaffold(

      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/albumscreen.png'),
                  fit: BoxFit.cover),
            ),

          ),

          Container(
            height: 300,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(AppConstants.BASE_URI+"/uploads/"+album.thumbnail!), fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Positioned(
            top: 310,
            child:  Container(
            width: width,
            height: 510,
            decoration: BoxDecoration(

              image: DecorationImage(
                  image: AssetImage('images/albumscreen.png'),
                  fit: BoxFit.cover),
            ),

          ),),

          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child:

            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                 Expanded(child: Container()),
                  Text(
                    'Album',
                    style: TextDimension.style24,
                  ),
                  Expanded(child: Container()),
                  Stack(
                    children:[
                      Container(
                          height: 20,
                          width: 20,
                          child:
                          Image(image: AssetImage('images/notification.png'))),
                      Container(
                        margin: EdgeInsets.only(left: 10,bottom: 8),
                        child: CircleAvatar(backgroundColor: Color(0xff3CFF43),
                          radius: 5,
                        ),
                      )
                    ]

                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 118,
              left: 15,
              child: Container(
                height: 122,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(AppConstants.BASE_URI+"/uploads/"+album.thumbnail!), fit: BoxFit.cover),
                ),
              )),
          Positioned(
              top: 138,
              left: 160,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Astroworld',
                      style: TextDimension.style24,
                    ),
                    Text(
                      'Discover the latest songs',
                      style: TextDimension.style14white,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.play_arrow,color: Colors.grey.shade700,),
                      ),
                        SizedBox(width: 10,),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text('Play now',style: TextDimension.style14white,))

                    ],)
                  ],
                ),
              )),
          Positioned(
            top: 290,
            left: 10,
            right: 10,
            child: Container(
              height: 50,
              width: width,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 87,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'images/dload.png'),
                      ),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(left: 16,top: 8),
                        child: Text('Download',style: TextDimension.style12white,)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 20,
                      width: 20,
                      child: Image(image: AssetImage('images/shuffle.png'))),
                  SizedBox(
                    width: 188,
                  ),
                  Container(
                      height: 20,
                      width: 20,
                      child: Image(image: AssetImage('images/share.png'))),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image(
                      image: AssetImage('images/heart.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 325,
              left: 0,
              right: 0,
              child: Container(
                height: 550,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 10,top: 20),
                      child: Text(
                        album.tracks.toString()+" tracks",
                        style: TextDimension.style12white,
                      ),
                    ),
                    MediaQuery.removePadding(
                        context: context,
                        child:

                       GetBuilder<AlbumsController>(builder: (songs){
                         return  Container(
                           height: 500,
                           width: width,
                           child: ListView.builder(
                               itemCount: songs.songList.length,
                               itemBuilder: (_, i) {
                                 return Column(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(right: 20),
                                       height: 120,
                                       width: width,
                                       decoration: BoxDecoration(
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/assmetric.png'),
                                         ),
                                       ),
                                       child: Row(
                                         children: [
                                           Container(
                                             margin: EdgeInsets.only(
                                                 left: 20, bottom: 18),
                                             child: CircleAvatar(
                                               radius: 30,
                                               backgroundImage:
                                               NetworkImage(AppConstants.BASE_URI+"/uploads/"+songs.songList[i].thumbnail!),
                                             ),
                                           ),
                                           SizedBox(
                                             width: 10,
                                           ),
                                           Container(
                                             margin: EdgeInsets.only(top: 30),
                                             child: Column(
                                               crossAxisAlignment:
                                               CrossAxisAlignment.start,
                                               children: [

                                                 Text(
                                                   songs.songList[i].title!,
                                                   style: TextDimension
                                                       .style14white,
                                                 ),
                                                 Text(
                                                   'Mayorkun',
                                                   style:
                                                   TextDimension.style14grey,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Container(
                                               margin: EdgeInsets.only(bottom: 10,left: 175),
                                               child: Icon(Icons.more_vert,color: Colors.grey.shade700,)),
                                         ],
                                       ),
                                     ),
                                     // Container(
                                     //   margin: EdgeInsets.only(left: 20),
                                     //   height: 120,
                                     //   width: width,
                                     //   decoration: BoxDecoration(
                                     //     image: DecorationImage(
                                     //       image: AssetImage('images/flip.png'),
                                     //     ),
                                     //   ),
                                     //   child: Row(
                                     //     children: [
                                     //       Container(
                                     //           margin: EdgeInsets.only(bottom: 10),
                                     //           child: Icon(Icons.more_vert,color: Colors.grey.shade700,)),
                                     //       Container(
                                     //         margin: EdgeInsets.only(
                                     //             top: 30, left: 180),
                                     //         child: Column(
                                     //           crossAxisAlignment:
                                     //           CrossAxisAlignment.start,
                                     //           children: [
                                     //
                                     //             Text(
                                     //               songs.songList[i].title!,
                                     //               style: TextDimension
                                     //                   .style14white,
                                     //             ),
                                     //             Text(
                                     //               album.artist.toString(),
                                     //               style:
                                     //               TextDimension.style14grey,
                                     //             )
                                     //           ],
                                     //         ),
                                     //       ),
                                     //       Container(
                                     //         margin: EdgeInsets.only(
                                     //             left: 10, bottom: 18),
                                     //         child: CircleAvatar(
                                     //           radius: 30,
                                     //           backgroundImage:
                                     //           NetworkImage(AppConstants.BASE_URI+"/uploads/"+songs.songList[i].thumbnail!),
                                     //         ),
                                     //       ),
                                     //
                                     //     ],
                                     //   ),
                                     // ),
                                   ],
                                 );

                               }),
                         );
                       })


                    ),
                  ],
                ),
              )),
          Stack(
            children: [
              Positioned(
                top: height - 66,
                child:
                Container(
                  margin: EdgeInsets.only(right: 20,left: 10),
                  height: 60,
                  width: 370,

decoration: BoxDecoration(
    color: Color(0xff322B57),
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),
  bottomRight: Radius.circular(50),
  topRight: Radius.circular(50))
),
                ),
              ),
              Positioned(
                top: height - 70,
                child:
                Container(
                  height: 70,
                  width: width,
                  decoration: BoxDecoration(


                    image: DecorationImage(
                        image: AssetImage('images/control.png'), fit: BoxFit.cover),
                  ),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 30,bottom: 10),
                          child: Icon(FontAwesomeIcons.heart,color: Colors.white,size: 14,)),
                      SizedBox(width: 10,),
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 30),
                        child: Column(
                          children: [
                            Text('Don\'t wake me up',style: TextDimension.style14white,),
                            Text('Chris brown - Don\'t wake me up',style: TextDimension.style10six,),
                            SizedBox(width: 20,),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   begin: Alignment.topRight,
                          //   end: Alignment.bottomLeft,
                          //   colors: [
                          //     Color(0xffD4CEF0
                          //     ),
                          //     Color(0xff332C55
                          //
                          //     ),
                          //   ],
                          // ),
                          image: DecorationImage(
                              image: AssetImage('images/pausebtn.png'), fit: BoxFit.cover),
                        ),
                        child: Container(

                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.pause,size: 30,color: Colors.white,)),
                      ),
                      SizedBox(width: 5,),
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Icon(Icons.fast_forward,color: Colors.white))
                    ],

                  ),
                ),
              ),
            ],

          )
        ],
      ),
    );
  }
}
