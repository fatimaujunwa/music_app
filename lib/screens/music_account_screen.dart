import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_constants/textstyle.dart';

class MusicAccountScreen extends StatefulWidget {
  const MusicAccountScreen({Key? key}) : super(key: key);

  @override
  _MusicAccountScreenState createState() => _MusicAccountScreenState();
}

class _MusicAccountScreenState extends State<MusicAccountScreen> {
  @override
  Widget build(BuildContext context) {
    double height = 812.h;
    double width = 375.w;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/playlist screen.png'),
                  fit: BoxFit.cover),
            ),
            child:

            ListView.builder(
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
                                    'Account',
                                    style: TextDimension.style36,
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    height: 20.h,
                                    width: 20.w,
                                    child: Image(
                                      image:
                                          AssetImage('images/notification.png'),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height:25 ,),
                              Container(

                                  height: 100.h,
                                  width: width,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 25.w),
                                    child: Row(children: [
                                      CircleAvatar(radius: 21.r,backgroundColor: Colors.white,
                                      child: CircleAvatar(backgroundColor: Color(0xff332c55),radius: 20.r,child: Container(
                                          height: 20.h,
                                          width: 20.w,

                                          child: Image(image: AssetImage('images/account.png'))),),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 25.h,left: 20.w),
                                        child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                          Text('Stella Bush',style: TextDimension.style14white,),
                                          SizedBox(height: 5.h,),
                                          Text('stella21@yahoo.com',style: TextDimension.style12whiteOpacity,),
                                          SizedBox(height: 5.h,),
                                          Text('UserID:286543KA',style:TextDimension.style12whiteOpacity),


                                        ],),
                                      )
                                    ],),
                                  ),
                                  decoration: BoxDecoration(


                                    image: DecorationImage(
                                        image: AssetImage('images/accimg.png'), fit: BoxFit.cover),
                                  ),),
                              SizedBox(height: 80.h,),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10.w,right: 10.w),
                                        height: 60.h,
                                        width: width,
                                        decoration:BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20.r)
                                        ) ,

                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.5,right: 10.5,top: 1),
                                        height: 60,
                                        width: width,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10,top: 20),
                                          child: Text('Change your email password',style:TextDimension.style14white ,),),
                                        decoration:BoxDecoration(
                                            color: Color(0xff13141e),
                                            borderRadius: BorderRadius.circular(20)
                                        ) ,
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10.w,right: 10.w),
                                        height: 60.h,
                                        width: width,
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.r)
                                        ) ,

                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.5.w,right: 10.5.w,top: 1.h),
                                        height: 60.h,
                                       child:  Container(
                                         margin: EdgeInsets.only(left: 10.w,top: 20.h),child: Text('Change your email address',style:TextDimension.style14white ,),),
                                        width: width,
                                        decoration:BoxDecoration(
                                            color: Color(0xff13141e),
                                            borderRadius: BorderRadius.circular(20.r)
                                        ) ,
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10.w,right: 10.w),
                                        height: 60.w,

                                        width: width,
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.r)
                                        ) ,

                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.5.w,right: 10.5.w,top: 1.h),
                                        height: 60.h,
                                        width: width,
                                        child:  Container(
                                          margin: EdgeInsets.only(left: 10.w,top: 20.h),
                                          child: Text('Subscriptions',style:TextDimension.style14white ,),),
                                        decoration:BoxDecoration(
                                            color: Color(0xff13141e),
                                            borderRadius: BorderRadius.circular(20)
                                        ) ,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 100.h,),
                                  Container(
height: 50,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:  AssetImage('images/sout.png'),
                                            fit: BoxFit.cover),
                                      ),
                                    child: Icon(FontAwesomeIcons.signOut,color: Colors.white,),  )
                                ],
                              )
                            ])
                      ]);
                })));
  }
}
