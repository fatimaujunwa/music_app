import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_constants/textstyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../screens/music_home_icon_screen.dart';
import '../screens/music_library_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex=0;

  void onTapNav(int index){
    setState(() {
      selectedIndex=index;
    });


  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(height: 130, ),
        Container(
          height: 75,
          margin: EdgeInsets.only(top: 60),

          child:
          BottomNavigationBar(
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: onTapNav,// Fixed
            backgroundColor: Color(0xfff322B58), // <-- This works for fixed
            selectedItemColor: Colors.white,

            unselectedItemColor: Color(0xff625E79),
            items: const[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 16,),
                label: 'Home',

              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note,size: 16,),
                  label: 'My library'
              ),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.search,size: 16,),
                  label: 'Search'
              ),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user,size: 16,),
                  label: 'Profile'
              ),


            ],
            selectedLabelStyle: TextDimension.style10six,
            unselectedLabelStyle:TextDimension.style10sixUnselected ,
          ),
        ),
        Container(
          height: 70,
          width: width,
          decoration: BoxDecoration(


            image: DecorationImage(
                image: AssetImage('images/control.png'), fit: BoxFit.cover),
          ),
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 30,bottom: 10),
                  child: Icon(FontAwesomeIcons.heart,color: Colors.white,size: 14,)),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.only(top: 10,left: 30),
                child: Column(
                  children: [
                    Text('Don\'t wake me up',style: TextDimension.style14white,),
                    Text('Chris brown - Don\'t wake me up',style: TextDimension.style10six,),
                    SizedBox(width: 20,),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 80,
                width: 70,
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //     Color(0xffD4CEF0
                  //     ),
                  //     Color(0xff332C55
                  //
                  //     ),
                  //   ],
                  // ),
                  image: DecorationImage(
                      image: AssetImage('images/pausebtn.png'), fit: BoxFit.cover),
                ),
                child: Container(

                    margin: EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.pause,size: 30,color: Colors.white,)),
              ),
              SizedBox(width: 5,),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Icon(Icons.fast_forward,color: Colors.white))
            ],

          ),
        ),

      ],


    );;
  }
}
