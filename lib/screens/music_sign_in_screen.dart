import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_constants/container_sizes.dart';
import '../widgets/custom_snack_bar.dart';
import '../widgets/rounded_music_container.dart';
import '../widgets/rounded_text_field.dart';
import '../helpers/route_helper.dart';
import '../models/sign_in_body.dart';
import '../app_constants/textstyle.dart';
import '../controllers/auth_controllers.dart';

class MusicSignInScreen extends StatefulWidget {
  const MusicSignInScreen({Key? key}) : super(key: key);

  @override
  _MusicSignInScreenState createState() => _MusicSignInScreenState();
}

class _MusicSignInScreenState extends State<MusicSignInScreen> {
  @override
  Widget build(BuildContext context) {
    double height=812.h;
    double width=375.w;
    TextEditingController usernameController=TextEditingController();
    TextEditingController passwordController=TextEditingController();

    void _login(){
      var authController=Get.find<AuthController>();
      String username=usernameController.text.trim();
    String password=passwordController.text.trim();

      if(username.isEmpty){
        showCustomSnackBar('Please type in your username',title: "username");

      }



      else if(password.isEmpty){
        showCustomSnackBar('Please type in your password',title: "password");
      }
      else if(password.length<6){
        showCustomSnackBar('length of password too short',title: "password");
      }

      else{
        showCustomSnackBar('Login',title: "You are logged in");
        SignInBody SignInbody=SignInBody(password: password, email: 'sam@gmail.com', username: username, );

        authController.login(SignInbody);

      }
    }

    return Scaffold(
        body:Stack(
          children: [

            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/registerscreen.jpg'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 50.h,
              ),
              height: height,width: width,

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(

                    ),
                    child: Text('Welcome Back',style:TextDimension.style24 ,),
                  ),
                  // SizedBox(height: 11,),
                  Text('we are pleased to see you again',style: TextDimension.style14grey,),
                  SizedBox(height: 183.h,),
                  Column(

                    children: [
                      Container(
// color: Colors.red,
                        height: 400,
                        width: width,
                        child: Column(
                          children: [
                            RoundTextField(Controller: usernameController,labelText: 'Username',text:'what should we call you' ,),

                            SizedBox(height: ContainerSize.usernameSizedBoxCreateAccount,),
                            RoundTextField(Controller: passwordController,labelText: 'Password',text:'what\'s your secret key?' ,),
                            SizedBox(height: 128.h,),

                            RoundedMusicContainer(text: Container(
                                margin: EdgeInsets.only(top: 12.h,left: 120.w),
                                child: Text('Sign in',style: TextDimension.style18white)),
                              width: ContainerSize.signInWidth, height: ContainerSize.signInHeight,img: 'images/purplebtn.png', onPressed: () {
                                _login();

                              },),

                            // SizedBox(height: 20.h,),

                            Container(margin: EdgeInsets.only(left: 10),
                              child: Text('forgot your password?',style: TextDimension.style14black,),
                            )
                          ],
                        ),
                      ),


                    ],
                  )
                ],
              ),
            ),



          ],

        )
    );
  }
}
