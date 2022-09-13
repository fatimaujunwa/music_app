import 'package:flutter/material.dart';

class RoundImageContainer extends StatelessWidget {
final String image;

  const RoundImageContainer({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,top: 2.9),
          child:   CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,



          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.3,top: 3.8),
          child: CircleAvatar(
            radius: 37.7,
           backgroundImage:AssetImage(image) ,

          ),
        )
      ],
    );
  }
}
