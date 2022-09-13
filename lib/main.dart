import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_constants/genre_container.dart';
import 'package:flutter_music_app/audio_file.dart';
import 'package:flutter_music_app/controllers/album_controller.dart';
import 'package:flutter_music_app/controllers/auth_controllers.dart';
import 'package:flutter_music_app/screens/music_account_screen.dart';
import 'package:flutter_music_app/screens/music_category_screen.dart';
import 'package:flutter_music_app/screens/music_home_icon_screen.dart';
import 'package:flutter_music_app/screens/music_home_screen.dart';
import 'package:flutter_music_app/screens/music_library_screen.dart';
import 'package:flutter_music_app/screens/music_now_playing_screen.dart';
import 'package:flutter_music_app/screens/music_search_screen.dart';
import 'package:flutter_music_app/screens/music_sign_in_screen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'app_constants/bottom_nav_bar.dart';
import 'app_constants/round_image_container.dart';
import 'app_constants/route_helper.dart';
import 'screens/music_sign_up_screen.dart';
import 'dependencies.dart'as dep;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();


  runApp(

    MyApp(),

  ) ;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
AudioPlayer audioPlayer=AudioPlayer();

  int selectedIndex=0;
  List pages=[
    MusicHomeIconScreen(),
    MusicLibraryScreen(),
    MusicSearchScreen(),
    MusicAccountScreen(),
    MusicHomescreen()


  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
// audioPlayer=AudioPlayer();
 Get.find<AlbumsController>().getAlbums();
   // Get.find<AlbumsController>().getSongs();
  // var x=  Get.find<AlbumsController>();
  // Get.find<AlbumsController>().songList[0];
  }

  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp(),
      initialRoute: RouteHelper.musicHomeIcon,
      getPages: RouteHelper.routes
      // body:pages[4],
      // extendBody: true,
      // bottomNavigationBar: BottomNavBar()



    );
  }
}




