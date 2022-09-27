import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_constants/textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_constants/genre_container.dart';

class MusicCategoryScreen extends StatefulWidget {
  const MusicCategoryScreen({Key? key}) : super(key: key);

  @override
  _MusicCategoryScreenState createState() => _MusicCategoryScreenState();
}

class _MusicCategoryScreenState extends State<MusicCategoryScreen> with TickerProviderStateMixin{

  late AnimationController controller1;
 late  AnimationController controller2;
 late  Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height=812.h;
    double width=375.w;
    return Scaffold(
      body:  Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/onboarding.jpg'),
    fit: BoxFit.cover
    ),
    ),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder:(_,i){
        return Container(  margin: EdgeInsets.only(top: 75.h,left: 20.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tell us about your interest', style: TextDimension.style24,),
              SizedBox(height: 10.h,),
              Text('Select what your most interested in',style: TextDimension.style14grey,),
              Text('and would like to see often',style: TextDimension.style14grey,),
              SizedBox(height: 40.h,),
SizedBox(
  height: height,


  child:   Stack(

    children: [
      Positioned(
          top: height * (animation2.value + .0725),
          left: width * .01,
          child: GenreContainer(

            margin: 1, text: 'Pop', image: 'images/redPoly.png',)),
      Positioned(
          top: height * (animation2.value + .0725),
          left: width * (animation1.value + .5333),
          child: GenreContainer(margin: 5, text: 'African\n music', image: 'images/bluePoly.png',)),
      Positioned(
          top: height * (animation3.value-.3025),
          left:width * (animation1.value + .2),
          child: GenreContainer(margin: 5, text: 'R & B', image: 'images/greenPoly.png',)),
      Positioned(
          top: height * (animation1.value + .1025),
          left: width * .12,
          child: GenreContainer(

            margin: 1, text: 'Worldwide', image: 'images/yellowPoly.png',)),

      Positioned(
          top: height * (animation3.value-.1725),
          left:width * (animation1.value + .3),
          child: GenreContainer(margin: 5, text: 'Soundtrack', image: 'images/purplePoly.png',)),

      Positioned(
          top: height * (animation2.value + .3025),
          left: width * .01,
          child: GenreContainer(

            margin: 1, text: 'Alternative', image: 'images/skybluePoly.png',)),
      Positioned(
          top: height * (animation3.value-.0525),
          left:width * (animation1.value + .5),
          child: GenreContainer(margin: 5, text: 'Blues', image: 'images/bluePoly.png',)),

      Positioned(
          top: height * (animation1.value + .35025),
          left: width * .15,
          child: GenreContainer(

            margin: 1, text: 'French', image: 'images/purplePoly.png',)),

      Positioned(
          top: height * (animation3.value-0.05),
          left:width * (animation1.value + .15),
          child: GenreContainer(margin: 5, text: 'Electronic', image: 'images/redPoly.png',)),
      Positioned(
          top: height * (animation2.value + .44025),
          left: width * .5,
          child: GenreContainer(

            margin: 1, text: 'Soul & Punk', image: 'images/yellowPoly.png',)),
      Positioned(
          top: height * (animation1.value + .45025),
          left: width * .7,
          child: GenreContainer(

            margin: 1, text: 'Country', image: 'images/greenPoly.png',)),
      Positioned(
          top: height * (animation2.value + .5525),
          left: width * .01,
          child: GenreContainer(

            margin: 1, text: 'Jazz', image: 'images/yellowPoly.png',)),
    ],
  ),
)
            ],

          ),
        );
      } ),
      )

    );
  }
}
