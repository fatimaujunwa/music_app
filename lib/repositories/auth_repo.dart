// import 'package:get/get.dart';
// import 'package:get/get_connect.dart';


import 'package:flutter_music_app/app_constants/uri_elements.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';


import '../data/api_client.dart';
import '../models/sign_in_body.dart';
import '../models/sign_up_body.dart';

class AuthRepo extends GetxService{
   final ApiClient apiClient;
   // final SharedPreferences sharedPreferences;
   AuthRepo({required this.apiClient});
 Future<Response>registration(SignUpBody body)async{

  return await apiClient.postData(AppConstants.REGISTER_URI, body.toJson());



 }

   Future<Response>login(SignInBody body)async{

     return await apiClient.postData(AppConstants.LOGIN_URI, body.toJson());

   }



 saveUserToken(dynamic token)async{
   apiClient.token=token;
   apiClient.updateHeaders(token);

 }

}