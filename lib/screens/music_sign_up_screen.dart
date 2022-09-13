import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
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
                    child: Text('Create an account',style:TextDimension.style24 ,),
                  ),
                  SizedBox(height: 11,),
                  Text('it allows us to know you and serve you better',style: TextDimension.style14grey,)
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
                          child: Container(
                              margin: EdgeInsets.only(top: 15,left: 80),
                              child: Text('Create an account',style: TextDimension.style18white)),
                        ),
                          width: ContainerSize.signInWidth, height: ContainerSize.signInHeight,img: 'images/purplebtn.png', onPressed: () {
                            _registration();

                        },),

                        Container(margin: EdgeInsets.only(left: 40),
                          child: Text('Sign up with google',style: TextDimension.style14black,),
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