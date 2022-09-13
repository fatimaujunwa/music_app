
import 'package:flutter_music_app/screens/music_category_screen.dart';
import 'package:flutter_music_app/screens/music_home_icon_screen.dart';
import 'package:flutter_music_app/screens/music_home_screen.dart';
import 'package:flutter_music_app/screens/music_sign_in_screen.dart';
import 'package:flutter_music_app/screens/music_sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../screens/music_album_screen.dart';



class RouteHelper{
  static const String initial="/";
  static const String signUp="/sign-up";
  static const String signIn="/sign-in";

  static const String musicHomeScreen="/music-home-screen";
  static const String musicCategory="/music-category";
  static const String musicAlbumScreen="/music-album-screen";
  static const String musicHomeIcon="/music-home-icon";
  static const String orderToCart="/orders-cart";
  static const String proceed="/proceed";
  static const String checkOut="/check-out";
  static const String favoritePage="/favorite-page";
  static const String orderDetails="/order-details";
  static const String logout="/logout";
  static const String profile="/profile";
  static const String foodScreen="/food-screen";

  static  String getSignin()=>'$signIn';
  static  String getSignup()=>'$signUp';
  static  String getInitial()=>'$initial';
  static  String getSMusicHomeScreen()=>'$musicHomeScreen';
  static  String getMusicCategory()=>'$musicCategory';
  static  String getAlbumScreen(int pageId)=>'$musicAlbumScreen?pageId=$pageId';
  static  String getMusicHomeIcon()=>'$musicHomeIcon';
  static  String getOrderToCart()=>'$orderToCart';
  static  String getProceed()=>'$proceed';
  static  String getCheckOut()=>'$checkOut';
  static  String getFavorite()=>'$favoritePage';

  static  String getOrdersDetails()=>'$orderDetails';
  static  String getProceedPage()=>'$proceed';
  static  String getLogOut()=>'$logout';
  static  String getProfile()=>'$profile';
  static  String getFoodScreen()=>'$foodScreen';


  static List<GetPage> routes=[
    // GetPage(name: initial, page: ()=>MainFoodPage()),
    // GetPage(name: popularFood, page: ()=>PopularFoodDetail()),
    // GetPage(name: initial, page: (){
    //   return FoodScreen();
    // },
    //   transition: Transition.zoom,
    //
    //
    // ),
    GetPage(name: musicHomeIcon, page: (){

      return MusicHomeIconScreen();
    },
      transition: Transition.fadeIn,


    ),
    // //
    GetPage(name: musicHomeScreen, page: (){
      return MusicHomescreen();
    },
      transition: Transition.fadeIn,


    ),
    // //
    // //
    GetPage(name: musicCategory, page: (){
      return MusicCategoryScreen();
    },
      transition: Transition.fadeIn,


    ),
    //
    GetPage(name: musicAlbumScreen, page: (){
      var pageId=Get.parameters['pageId'];

      return MusicAlbumScreen(pageId: int.parse(pageId!));
    },
      transition: Transition.zoom,


    ),
    //
    // GetPage(name: proceed, page: (){
    //
    //   return CheckOutScreen();
    // },
    //   transition: Transition.fadeIn,
    //
    //
    // ),
    // //
    // GetPage(name: checkOut, page: (){
    //   return OrderHistoryScreen();
    // },
    //   transition: Transition.fadeIn,
    //
    //
    // ),
    // //
    // GetPage(name: favoritePage, page: (){
    //
    //   return FavoritesPage();
    // },
    //     transition: Transition.leftToRightWithFade
    // ),
    // //
    // GetPage(name: profile, page: (){
    //   var pageId=Get.parameters['pageId'];
    //   return ProfileScreen();
    // },
    //
    //     transition: Transition.rightToLeftWithFade
    // ),
    GetPage(name: signIn, page: (){

      return MusicSignInScreen();
    }),

    GetPage(name: signUp, page: (){

      return MusicSignUpScreen();
    })
  ];
}