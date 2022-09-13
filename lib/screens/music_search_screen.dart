import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
      SizedBox(height: 40,),
      Container(
        margin: EdgeInsets.only(left: 20,right: 20),
      height: 50,
      width: width-20,
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
      SizedBox(height: 55,),
      Container(
      height: 100,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/button.png'),
              fit: BoxFit.cover
            )
          ),
        child: Row(children: [
          Icon(Icons.hearing,color: Color(0xff625E99),size: 70,),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(children: [
              Text('What song?',style: TextDimension.style14white,),
              Text('Search the song playing around you',style: TextDimension.style14white),
            ],),
          )
        ],),
          ),
      SizedBox(height: 20,),

      Container(
        height: 550,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('Recently searched',style: TextDimension.style14white,)),
            MediaQuery.removePadding(
                context: context,
                child: Container(
                  height: 500,
                  width: width,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (_, i) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 120,
                              width: width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'images/assmetric.png'),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20, bottom: 18),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                      AssetImage('images/tat.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
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
                                      margin: EdgeInsets.only(bottom: 10,left: 175),
                                      child: Icon(Icons.more_vert,color: Colors.grey.shade700,)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 120,
                              width: width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/flip.png'),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Icon(Icons.more_vert,color: Colors.grey.shade700,)),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 30, left: 180),
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
                                    margin: EdgeInsets.only(
                                        left: 10, bottom: 18),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                      AssetImage('images/tat.jpg'),
                                    ),
                                  ),

                                ],
                              ),
                            ),
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
