import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_constants/textstyle.dart';


import 'container_sizes.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField({
    Key? key,
    required this.Controller,
    required this.labelText,
    required this.text
  }) : super(key: key);

  final TextEditingController Controller;
  final String labelText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ContainerSize.usernameHeightCreateAccount,
      width: ContainerSize.usernameWidthCreateAccount,
      child:
      TextField(
        controller: Controller,
        decoration: InputDecoration(
          label: Text(labelText,),
          hintText: text,
         hintStyle: TextDimension.style12grey,
         labelStyle: TextDimension.style12black,
          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color:Color(0xff625E79),width: 2)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color:Color(0xff625E79),width: 2)
          ),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color:Color(0xff625E79),width: 2)
          ),
        ),),
    );
  }
}