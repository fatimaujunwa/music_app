import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'container_sizes.dart';

class RoundedMusicContainer extends StatelessWidget {
  final Widget text;
  final double height;
  final double width;
final String img;
final Function() onPressed;
  const RoundedMusicContainer({Key? key,required this.text,required this.width,required this.height,this.img='images/purplebtn.png', required this.onPressed, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        margin: EdgeInsets.only(left: ContainerSize.signInMarginLeft,right: ContainerSize.signInMarginRight,),
height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),

image: DecorationImage(
            image: AssetImage(img),
fit: BoxFit.cover
        )
        ),
        child: text,
      ),
    );
  }
}
