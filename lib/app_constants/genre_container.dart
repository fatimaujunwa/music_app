import 'package:flutter/cupertino.dart';
import 'package:flutter_music_app/app_constants/textstyle.dart';

class GenreContainer extends StatelessWidget {
  final String image;
  final String text;
  final double margin;
  const GenreContainer({Key? key,required this.text, required this.image,required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
        ),
      ),
   child: Center(child: Text(text,style:TextDimension.style14white ,)), );
  }
}
