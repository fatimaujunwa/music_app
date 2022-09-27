import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_constants/container_sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/rounded_music_container.dart';
import '../helpers/route_helper.dart';
import '../app_constants/textstyle.dart';


class MusicHomescreen extends StatelessWidget {
  const MusicHomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height:  812.h,
        width: 375.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/discover.jpg'),
            fit: BoxFit.cover
          ),
        ),

         child: Container(

           height: 812.h,
           width: 375.w,
           color: Colors.black.withOpacity(0.6),
           child:  Column(

             children: [
               Container(
// color: Colors.red,
                 height: ContainerSize.discoverContainerHeight,
                 width: ContainerSize.discoverContainerWidth,
                 margin: EdgeInsets.only(top: ContainerSize.discoverContainerMarginTop,left: ContainerSize.discoverContainerMarginLeft,right: ContainerSize.discoverContainerMarginRight,

                 ),
                 child: Text('Discover the latest hits world wide.',style: TextDimension.style48,),
               ),
               SizedBox(height: ContainerSize.discoverContainerSizedBox,),
               RoundedMusicContainer(text: Container(
                   margin: EdgeInsets.only(top: 15.h,left: 120.w),
                   child: Text('Sign in',style: TextDimension.style18black,)), width: ContainerSize.signInWidth, height: ContainerSize.signInHeight,img: 'images/whitebtn.png', onPressed: () {
                 Get.toNamed(RouteHelper.getSignin());

               },


               ),

               RoundedMusicContainer(text: Container(
                   margin: EdgeInsets.only(top: 15.h,left: 80.w),
                   child: Text('Create an account',style: TextDimension.style18white)),
                 width: ContainerSize.signInWidth, height: ContainerSize.signInHeight,img: 'images/purplebtn.png', onPressed: () {
                   Get.toNamed(RouteHelper.getSignup());

                 },),


             ],
           ),
         ),
        ),
    );

  }
}
