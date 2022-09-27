import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/controllers/album_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Music',
                            style: TextDimension.style36,
                          ),
                          SizedBox(
                            width: 245.w,
                          ),
                          Container(
                              height: 20.h,
                              width: 20.w,
                              child: Image(
                                  image: AssetImage('images/notification.png')))
                        ],
                      ),
                      Text(
                        'Discover the latest songs',
                        style: TextDimension.style14grey,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Recently played',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                          height: 80.h,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  child: CircleAvatar(
                                    radius: 36.r,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage('images/royal.jpeg'),
                                      // backgroundImage: NetworkImage(
                                      //     AppConstants.BASE_URI + "/uploads/"
                                      //     // albumList.albums[index].thumbnail!
                                      //     ),
                                      radius: 35.r,
                                    ),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Hits of 2022',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 200.h,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LinearGradientContainer(
                                    width: 150.w,
                                    height: 150.h,
                                    images: 'images/royal.jpeg',
                                    innerHeight: 150.h,
                                    innerWidth: 150.h,
                                    marginRight: 10.0.w,
                                    radius: 20.r,
                                    innerRadius: 20.r, onPressed: () {  },
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        'Twice as tall',
                                        style: TextDimension.style12white,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Container(
                                    // color: Colors.red,
                                      margin: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        '12 tracks',
                                        style: TextDimension.style10grey,
                                      )),
                                ],
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Albums you may like',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 150.h,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  LinearGradientContainer(

                                    width: 114.4.w,
                                    height: 102.96.h,
                                    images:  'images/tat.jpg',
                                    // AppConstants.BASE_URI + "/uploads/"
                                    //     +album.albums[index].thumbnail!,
                                    innerHeight: 102.96.h,
                                    innerWidth: 114.4.w,
                                    marginRight: 18.93.w,
                                    radius: 10.r,
                                    innerRadius: 10.r, onPressed: () {

                                    Get.toNamed(RouteHelper.getAlbumScreen(index+1));
                                  },
                                  ),
                                ],
                              );
                            }),
                      ),
                      // GetBuilder<AlbumsController>(builder: (album) {
                      //   return
                      //     Container(
                      //     height: 150.h,
                      //     child: ListView.builder(
                      //         itemCount: album.albums.length,
                      //         scrollDirection: Axis.horizontal,
                      //         itemBuilder: (_, index) {
                      //           return Column(
                      //             children: [
                      //               LinearGradientContainer(
                      //
                      //                 width: 114.4.w,
                      //                 height: 102.96.h,
                      //                 images:  AppConstants.BASE_URI + "/uploads/"
                      //                 +album.albums[index].thumbnail!,
                      //                 innerHeight: 102.96.h,
                      //                 innerWidth: 114.4.w,
                      //                 marginRight: 18.93.w,
                      //                 radius: 10.r,
                      //                 innerRadius: 10.r, onPressed: () {
                      //
                      //                   Get.toNamed(RouteHelper.getAlbumScreen(index+1));
                      //               },
                      //               ),
                      //             ],
                      //           );
                      //         }),
                      //   );
                      // }),
                      Text(
                        'Genre',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 150.h,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  LinearGradientContainer(
                                    width: 114.4.w,
                                    height: 102.96.h,
                                    images: 'images/astro.jpg',
                                    innerHeight: 102.96.h,
                                    innerWidth: 114.4.w,
                                    marginRight: 18.93.w,
                                    radius: 10.r,
                                    innerRadius: 10.r, onPressed: () {  },
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
      labelStyle: TextStyle(fontSize: 12.0.sp),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white30,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
    ),
  );
}
