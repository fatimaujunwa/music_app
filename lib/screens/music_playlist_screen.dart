import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/round_image_container.dart';
import '../app_constants/textstyle.dart';


class MusicPlaylistScreen extends StatefulWidget {
  const MusicPlaylistScreen({Key? key}) : super(key: key);

  @override
  _MusicPlaylistScreenState createState() => _MusicPlaylistScreenState();
}

class _MusicPlaylistScreenState extends State<MusicPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    double height = 812.h;
    double width = 375.w;
    TextEditingController searchController=TextEditingController();
    return Scaffold(
     body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/playlist screen.png'),
              fit: BoxFit.cover),
        ),
child: ListView.builder(
    itemCount: 1,
    itemBuilder: (_,i){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            Expanded(child: Container()),
            Text(
              'Playlists',
              style: TextDimension.style24,
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
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return RoundImageContainer(image: 'images/ing.png',);
            }),
      ),
      SizedBox(
        height: 40.h,
      ),
      Row(
        children: [
          Container(
            height: 44.h,
            width: 253.w,
            child: TextField(

              controller: searchController,
              decoration: InputDecoration(
                label: Text('Search',),
                hintText: 'Artist songs or albums',
                hintStyle: TextDimension.style12grey,
                labelStyle: TextDimension.style12white,
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),
              ),),
          ),
          Expanded(child: Container()),
          Container(
              height: 20.h,
              width: 20.w,
              child: Image(image: AssetImage('images/sort.png'))),
          Expanded(child: Container()),
          Container(
              height: 20.h,
              width: 20.w,
              child: Image(image: AssetImage('images/searchicon.png'))),
          Expanded(child: Container()),
          Container(
              height: 20.h,
              width: 20.w,
              child: Image(image: AssetImage('images/display.png'))),
        ],
      ),
      SizedBox(
        height: 30.h,
      ),
      Row(
        children: [
          Stack(
            children: [
              Container(
margin: EdgeInsets.only(left: 10.w,top: 2.9.h),
                child:   CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 21.r,



                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.5.w,top: 4.h),
              child: CircleAvatar(
              radius: 20.5.r,
              backgroundColor: Color(0xff13141e),
                child: Icon(Icons.add,color: Colors.white,),
              ),
              )
            ],
          ),
          SizedBox(width: 15.w,),
          Text('Create playlist',style: TextDimension.style14white,),

        ],
      ),
      SizedBox(
        height: 35.h,
      ),
Row(
  children: [
        Image(image: AssetImage('images/musicimg.png')),
    SizedBox(width: 15.w,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Rap',style: TextDimension.style14white,),
        SizedBox(height: 5.h,),
        Text('Track- 14',style: TextDimension.style12grey,),

      ],
    ),
    Expanded(child: Container()),
    Container(
      margin: EdgeInsets.only(right: 20.w),
      width: 100.w,

      child: Row(children: [
      Container(
          height: 20.h,
          width: 20.w,
          child: Image(image: AssetImage('images/share.png'))),

      Expanded(child: Container()),
      Container(
          height: 20.h,
          width: 20.w,
          child: Image(image: AssetImage('images/heart.png'))),
      Expanded(child: Container()),
      Icon(Icons.more_vert,color: Colors.grey.shade700,)
    ],),),

  ],
),
      SizedBox(
        height: 30.h,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Calming',style: TextDimension.style14white,),
              SizedBox(height: 5.h,),
              Text('Track- 23',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 100.w,

            child: Row(children: [
              Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image(image: AssetImage('images/heart.png'))),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.grey.shade700,)
            ],),),
        ],
      ),
      SizedBox(
        height: 30.h,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rainy',style: TextDimension.style14white,),
              SizedBox(height: 5.h,),
              Text('Track- 20',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 100.w,

            child: Row(children: [
              Container(
                  height: 20.w,
                  width: 20.w,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image(image: AssetImage('images/heart.png'))),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.grey.shade700,)
            ],),),
        ],
      ),
      SizedBox(
        height: 30.h,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Valentine',style: TextDimension.style14white,),
              SizedBox(height: 5.h,),
              Text('Track- 12',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 100.w,

            child: Row(children: [
              Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image(image: AssetImage('images/heart.png'))),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.grey.shade700,)
            ],),),
        ],
      )
    ],
  );
}),
      ),
    );
  }
}
