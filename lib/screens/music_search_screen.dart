import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_constants/textstyle.dart';


class MusicSearchScreen extends StatefulWidget {
  const MusicSearchScreen({Key? key}) : super(key: key);

  @override
  _MusicSearchScreenState createState() => _MusicSearchScreenState();
}

class _MusicSearchScreenState extends State<MusicSearchScreen> {
  @override
  Widget build(BuildContext context) {
    double height = 812.h;
    double width = 375.w;
    TextEditingController searchController=TextEditingController();
    return Scaffold(

      body:  Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/search screen.png'),
              fit: BoxFit.cover),
        ),
child: ListView.builder(
    itemCount: 1,
    itemBuilder: (_,i){
  return  Column(
    children: [
      Container(
        child: Row(
          children: [


            Text(
              'Search',
              style: TextDimension.style36,
            ),
            Expanded(child: Container()),
            Stack(
                children:[
                  Container(
                      height: 20.h,
                      width: 20.w,
                      child:
                      Image(image: AssetImage('images/notification.png'))),
                  Container(
                    margin: EdgeInsets.only(left: 10.w,bottom: 8.h),
                    child: CircleAvatar(backgroundColor: Color(0xff3CFF43),
                      radius: 5.r,
                    ),
                  )
                ]

            )
          ],
        ),
      ),
      SizedBox(height: 40.h,),
      Container(
        margin: EdgeInsets.only(left: 20.w,right: 20.w),
      height: 50.h,
      width: width-20.w,
      child:
      TextField(
      controller: searchController,
      decoration: InputDecoration(
      label: Text('Search',),
      hintText: 'Artist songs or albums',
      hintStyle: TextDimension.style12grey,
      labelStyle: TextDimension.style12white,
      border: OutlineInputBorder(

      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color:Color(0xff625E79),width: 2)
      ),
      focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color:Color(0xff625E79),width: 2)
      ),

      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color:Color(0xff625E79),width: 2)
      ),
      ),),
      ),
      SizedBox(height: 55.h,),
      Container(

      height: 89.79.h,
          width: 321.w,
          decoration: BoxDecoration(
              // color: Colors.red,
            image: DecorationImage(
              image: AssetImage('images/button.png'),
              fit: BoxFit.fill
            )
          ),
        child: Row(children: [
          Icon(Icons.hearing,color: Color(0xff625E99),size: 50,),
          SizedBox(width: 10.w,),
          Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Column(children: [
              Text('What song?',style: TextDimension.style14white,),
              Text('Search the song playing around you',style: TextDimension.style14white),
            ],),
          )
        ],),
          ),
      SizedBox(height: 20.h,),

      Container(
        height: 550.h,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Text('Recently searched',style: TextDimension.style14white,)),
            MediaQuery.removePadding(
                context: context,
                child: Container(

                  height: 500.h,
                  width: width,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (_, i) {
                        return Column(
                          children: [
                            Container(
// padding: EdgeInsets.only(top: 10.h),
                              // margin: EdgeInsets.only(right: 20.w),
                              height: 120.h,
                              width: 354,
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'images/assmetric.png'),
                                  fit: BoxFit.fill
                                ),
                              ),
                              child:
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 30.w, bottom: 18.h),
                                    child: CircleAvatar(
                                      radius: 30.r,
                                      backgroundImage:
                                      AssetImage('images/tat.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30.h),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Holy Father',
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
                                      margin: EdgeInsets.only(bottom: 10.h,left: 140.w),
                                      child: Icon(Icons.more_vert,color: Colors.grey.shade700,)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h,)
                            // Container(
                            //   margin: EdgeInsets.only(left: 20),
                            //   height: 120,
                            //   width: width,
                            //   decoration: BoxDecoration(
                            //     image: DecorationImage(
                            //       image: AssetImage('images/flip.png'),
                            //     ),
                            //   ),
                            //   child:
                            //   Row(
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
                            //             Text(
                            //               'Holy Father',
                            //               style: TextDimension
                            //                   .style14white,
                            //             ),
                            //             Text(
                            //               'Mayorkun',
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
                            //           AssetImage('images/tat.jpg'),
                            //         ),
                            //       ),
                            //
                            //     ],
                            //   ),
                            // ),
                          ],
                        );
                      }),
                ))
          ],
        ),
      ),
    ],
  );





}),
      ),





    );
  }
}
