import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_constants/round_image_container.dart';
import '../app_constants/textstyle.dart';


class MusicPlaylistScreen extends StatefulWidget {
  const MusicPlaylistScreen({Key? key}) : super(key: key);

  @override
  _MusicPlaylistScreenState createState() => _MusicPlaylistScreenState();
}

class _MusicPlaylistScreenState extends State<MusicPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return RoundImageContainer(image: 'images/ing.png',);
            }),
      ),
      SizedBox(
        height: 40,
      ),
      Row(
        children: [
          Container(
            height: 44,
            width: 253,
            child: TextField(

              controller: searchController,
              decoration: InputDecoration(
                label: Text('Search',),
                hintText: 'Artist songs or albums',
                hintStyle: TextDimension.style12grey,
                labelStyle: TextDimension.style12white,
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color:Color(0xff625E79),width: 2)
                ),
              ),),
          ),
          Expanded(child: Container()),
          Container(
              height: 20,
              width: 20,
              child: Image(image: AssetImage('images/sort.png'))),
          Expanded(child: Container()),
          Container(
              height: 20,
              width: 20,
              child: Image(image: AssetImage('images/searchicon.png'))),
          Expanded(child: Container()),
          Container(
              height: 20,
              width: 20,
              child: Image(image: AssetImage('images/display.png'))),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Stack(
            children: [
              Container(
margin: EdgeInsets.only(left: 10,top: 2.9),
                child:   CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 21,



                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.5,top: 4),
              child: CircleAvatar(
              radius: 20.5,
              backgroundColor: Color(0xff13141e),
                child: Icon(Icons.add,color: Colors.white,),
              ),
              )
            ],
          ),
          SizedBox(width: 15,),
          Text('Create playlist',style: TextDimension.style14white,),

        ],
      ),
      SizedBox(
        height: 35,
      ),
Row(
  children: [
        Image(image: AssetImage('images/musicimg.png')),
    SizedBox(width: 15,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Rap',style: TextDimension.style14white,),
        SizedBox(height: 5,),
        Text('Track- 14',style: TextDimension.style12grey,),

      ],
    ),
    Expanded(child: Container()),
    Container(
      margin: EdgeInsets.only(right: 20),
      width: 100,

      child: Row(children: [
      Container(
          height: 20,
          width: 20,
          child: Image(image: AssetImage('images/share.png'))),

      Expanded(child: Container()),
      Container(
          height: 20,
          width: 20,
          child: Image(image: AssetImage('images/heart.png'))),
      Expanded(child: Container()),
      Icon(Icons.more_vert,color: Colors.grey.shade700,)
    ],),),

  ],
),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Calming',style: TextDimension.style14white,),
              SizedBox(height: 5,),
              Text('Track- 23',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 100,

            child: Row(children: [
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/heart.png'))),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.grey.shade700,)
            ],),),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rainy',style: TextDimension.style14white,),
              SizedBox(height: 5,),
              Text('Track- 20',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 100,

            child: Row(children: [
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/heart.png'))),
              Expanded(child: Container()),
              Icon(Icons.more_vert,color: Colors.grey.shade700,)
            ],),),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Image(image: AssetImage('images/musicimg.png')),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Valentine',style: TextDimension.style14white,),
              SizedBox(height: 5,),
              Text('Track- 12',style: TextDimension.style12grey,),
            ],
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 100,

            child: Row(children: [
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('images/share.png'))),

              Expanded(child: Container()),
              Container(
                  height: 20,
                  width: 20,
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
