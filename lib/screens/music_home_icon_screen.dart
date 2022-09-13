import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/controllers/album_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_constants/bottom_nav_bar.dart';
import '../app_constants/linear_gradient_container.dart';
import '../app_constants/route_helper.dart';
import '../app_constants/textstyle.dart';
import '../app_constants/uri_elements.dart';
import 'music_library_screen.dart';
import 'music_search_screen.dart';

class MusicHomeIconScreen extends StatefulWidget {
  const MusicHomeIconScreen({Key? key}) : super(key: key);

  @override
  _MusicHomeIconScreenState createState() => _MusicHomeIconScreenState();
}

class _MusicHomeIconScreenState extends State<MusicHomeIconScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // var recentAlbums=Get.find<AlbumsController>().albums;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/homescreen.png'), fit: BoxFit.cover),
        ),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Music',
                            style: TextDimension.style36,
                          ),
                          SizedBox(
                            width: 245,
                          ),
                          Container(
                              height: 20,
                              width: 20,
                              child: Image(
                                  image: AssetImage('images/notification.png')))
                        ],
                      ),
                      Text(
                        'Discover the latest songs',
                        style: TextDimension.style14grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Recently played',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 80,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          AppConstants.BASE_URI + "/uploads/"
                                          // albumList.albums[index].thumbnail!
                                          ),
                                      radius: 35,
                                    ),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Hits of 2022',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LinearGradientContainer(
                                    width: 150,
                                    height: 150,
                                    images: 'images/tat.jpg',
                                    innerHeight: 150,
                                    innerWidth: 150,
                                    marginRight: 10.0,
                                    radius: 20,
                                    innerRadius: 20, onPressed: () {  },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Twice as tall',
                                        style: TextDimension.style12white,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        '12 tracks',
                                        style: TextDimension.style10grey,
                                      )),
                                ],
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Albums you may like',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AlbumsController>(builder: (album) {
                        return Container(
                          height: 150,
                          child: ListView.builder(
                              itemCount: album.albums.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return Column(
                                  children: [
                                    LinearGradientContainer(

                                      width: 114.4,
                                      height: 102.96,
                                      images:  AppConstants.BASE_URI + "/uploads/"
                                      +album.albums[index].thumbnail!,
                                      innerHeight: 102.96,
                                      innerWidth: 114.4,
                                      marginRight: 18.93,
                                      radius: 10,
                                      innerRadius: 10, onPressed: () {

                                        Get.toNamed(RouteHelper.getAlbumScreen(index+1));
                                    },
                                    ),
                                  ],
                                );
                              }),
                        );
                      }),
                      Text(
                        'Genre',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 150,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  LinearGradientContainer(
                                    width: 114.4,
                                    height: 102.96,
                                    images: 'images/astro.jpg',
                                    innerHeight: 102.96,
                                    innerWidth: 114.4,
                                    marginRight: 18.93,
                                    radius: 10,
                                    innerRadius: 10, onPressed: () {  },
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}

Widget customBottomNavigationBar(BuildContext context) {
  double myHeight = 100.0; //Your height HERE
  return SizedBox(
    height: myHeight,
    width: MediaQuery.of(context).size.width,
    child: TabBar(
      tabs: [
        Tab(text: 'One', icon: Icon(Icons.import_contacts, size: 20.0)),
        Tab(text: 'Two', icon: Icon(Icons.restaurant, size: 20.0)),
        Tab(text: 'Three', icon: Icon(Icons.record_voice_over, size: 20.0)),
      ],
      labelStyle: TextStyle(fontSize: 12.0),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white30,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
    ),
  );
}
