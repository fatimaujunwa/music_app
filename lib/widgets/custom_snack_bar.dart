import 'package:flutter/cupertino.dart';
import 'package:flutter_music_app/app_constants/textstyle.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


void showCustomSnackBar(String message,{bool isError=true,String title='Error'}){
  Get.snackbar(title,message,
  titleText:Text(title,style: TextDimension.style14white,),
  messageText: Text(message,style: TextDimension.style14white,),


  );
}