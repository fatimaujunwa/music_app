import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_constants/container_sizes.dart';
import '../app_constants/custom_snack_bar.dart';
import '../app_constants/rounded_music_container.dart';
import '../app_constants/rounded_text_field.dart';
import '../app_constants/route_helper.dart';
import '../app_constants/sign_in_body.dart';
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
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
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
                  top: 60,left: 42, right: 42
              ),
              height: 100,
              width: 400,

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(

                    ),
                    child: Text('Welcome Back',style:TextDimension.style24 ,),
                  ),
                  SizedBox(height: 11,),
                  Text('we are pleased to see you again',style: TextDimension.style14grey,)
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Column(

                children: [
                  Container(

                    height: 440,
                    width: width,
                    child: Column(
                      children: [
                        RoundTextField(Controller: usernameController,labelText: 'Username',text:'what should we call you' ,),

                        SizedBox(height: ContainerSize.usernameSizedBoxCreateAccount,),
                        RoundTextField(Controller: passwordController,labelText: 'Password',text:'what\'s your secret key?' ,),
                        SizedBox(height: 128,),


                        RoundedMusicContainer(text: Container(
                            margin: EdgeInsets.only(top: 15,left: 130),
                            child: Text('Sign in',style: TextDimension.style18white)), width: ContainerSize.signInWidth, height: ContainerSize.signInHeight,img: 'images/purplebtn.png', onPressed: () {
                          _login();
                        },),

                        Container(margin: EdgeInsets.only(left: 10),
                          child: Text('forgot your password?',style: TextDimension.style14black,),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),


          ],

        )
    );
  }
}
