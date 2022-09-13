import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LinearGradientContainer extends StatelessWidget {
  final String images;
  final double height;
  final double width;
  final double marginRight;
  final double innerHeight;
  final double innerWidth;
  final double radius;
  final double innerRadius;
final Function()onPressed;
   LinearGradientContainer({Key? key,
required this.width,
    required this.height,
     required this.images,
     required this.innerHeight,
     required this.innerWidth,
     required this.marginRight,
required this.radius,
     required this.innerRadius,
     required this.onPressed

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onPressed,

        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: height,
            width: width+1,
            decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(radius)
            ) ,

          ),
          Container(
            margin: EdgeInsets.only(left: 10.5,right: 10,top: 1),
            height: height,
            child:  Container(
              margin: EdgeInsets.only(left: 10,top: 20),),
            width: width,
            decoration:BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(innerRadius)
            ) ,
          ),

        ],),
      );

  }
}
