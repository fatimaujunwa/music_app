import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_utils/src/get_utils/get_utils.dart';


import '../app_constants/container_sizes.dart';
import '../app_constants/custom_snack_bar.dart';
import '../app_constants/rounded_music_container.dart';
import '../app_constants/rounded_text_field.dart';
import '../app_constants/route_helper.dart';
import '../app_constants/sign_up_body.dart';
import '../app_constants/textstyle.dart';
import '../controllers/auth_controllers.dart';

class MusicSignUpScreen extends StatefulWidget {
  const MusicSignUpScreen({Key? key}) : super(key: key);

  @override
  _MusicSignUpScreenState createState() => _MusicSignUpScreenState();
}

class _MusicSignUpScreenState extends State<MusicSignUpScreen> {
  @override
  Widget build(BuildContext context) {

    double height=812.h;
    double width=375.w;
    TextEditingController usernameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    TextEditingController confirmPasswordController=TextEditingController();

    void _registration(){
      var authController=Get.find<AuthController>();
      String username=usernameController.text.trim();
      String email=emailController.text.trim();
      String password=passwordController.text.trim();
      String confirmPassword=confirmPasswordController.text.trim();
      if(username.isEmpty && email.isEmpty && password.isEmpty &&confirmPassword.isEmpty){
        showCustomSnackBar('Please type in your details',title: "user details");
      }
      else{

        if(username.isEmpty){
          showCustomSnackBar('Please type in your username',title: "username");

        }
       else if(!GetUtils.isEmail(email)){
          showCustomSnackBar('Please type in your correct email address',title: "email");
        }
      else  if(password.isEmpty){
          showCustomSnackBar('Please type in your password',title: "password");

        }
        else if(password.length<6){
          showCustomSnackBar('length of password too short',title: "password");
        }

      else  if(confirmPassword.isEmpty){
          showCustomSnackBar('Please type in password again',title: "password");
        }
        else{

          if(confirmPassword!=password){
            showCustomSnackBar('the passwords do not match',title: "retype password");
          }

          else{
            SignUpBody body=SignUpBody(password: password, email: email, username: username, confirmPassword: confirmPassword);

            authController.registration(body)..then((value) {
              if(Get.find<AuthController>().isLoading){
                showCustomSnackBar('Account Created Successfully');
                Get.toNamed(RouteHelper.getMusicCategory());
              }
              else{

                print(authController.isLoading);
                showCustomSnackBar('Incorrect email and password combination');
              }
            });;
          }

        }
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
              margin: EdgeInsets.only(top: 50.h,left: 30.w, right: 30.w),
              height: height,width: width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(

                    ),
                    child: Text('Create an account',style:TextDimension.style24 ,),
                  ),
                  Text('it allows us to know you and serve you better',style: TextDimension.style14grey,),
                  SizedBox(height:183.h,),

                  Column(
                    children: [
                      RoundTextField(Controller: usernameController,labelText: 'Username',text:'what should we call you' ,),
                      SizedBox(height: ContainerSize.usernameSizedBoxCreateAccount,),
                      RoundTextField(Controller: emailController,labelText: 'Email',text:'what\'s your email address?' ,),
                      SizedBox(height: ContainerSize.usernameSizedBoxCreateAccount,),
                      RoundTextField(Controller: passwordController,labelText: 'Password',text:'what\'s your secret key?' ,),
                      SizedBox(height: ContainerSize.usernameSizedBoxCreateAccount,),
                      RoundTextField(Controller: confirmPasswordController,labelText: 'Confirm password',text:'re-type your secret key' ,),
                      SizedBox(height: ContainerSize.usernameMarginBottomCreateAccount,),
                      RoundedMusicContainer(

                        text: GestureDetector(
                          onTap: (){
                            _registration();

                          },
                          child: Center(child: Text('Create an account',style: TextDimension.style18white)),
                        ),
                        width: 283.w, height: 60.h,img: '', onPressed: () {
                        _registration();

                      },),
SizedBox(height: 20.h,),
                      Container(margin: EdgeInsets.only(left: 40.w),
                        child: Text('Sign up with google',style: TextDimension.style14black,),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Positioned(
            //     top: 330.h,
            //     child:
            //
            // ),


          ],
            )
            // Container(
            //   color: Colors.red,
            //   margin: EdgeInsets.only(
            //       top: 60.h,left: 42.w, right: 42.w
            //   ),
            //   height: 50.h,
            //   width: 400.w,
            //


        );

  }
}
