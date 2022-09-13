import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicContainer extends StatelessWidget {
  final double height;
  final double width;
  final String img;
  final double radius;
 MusicContainer({Key? key,required this.img,required this.height,required this.width,required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(radius),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
        ),
      );

  }
}
