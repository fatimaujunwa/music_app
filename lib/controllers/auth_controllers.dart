// import 'package:get/get.dart';


import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../app_constants/sign_in_body.dart';
import '../app_constants/sign_up_body.dart';
import '../repositories/auth_repo.dart';
import '../response_model.dart';

class AuthController extends GetxController{
  final AuthRepo repo;
  AuthController({
required this.repo
});

  bool _isLoading=false;
  bool get isLoading=>_isLoading;
late ResponseModel resposeModel;
 Future<void> registration(SignUpBody body)async{


     Response response= await repo.registration(body);
    if(response.statusCode==200){
      _isLoading=true;
       repo.saveUserToken(response.body["token"]);
      print(response.body["token"]);
    }
    else{
      print(response.statusCode);
      _isLoading=false;
    }

    update();

  }

  Future<void> login(SignInBody body)async{


    Response response= await repo.login(body);
    if(response.statusCode==200){
      _isLoading=true;
      // repo.saveUserToken(response.body["token"]);
      print(response.body["token"]);
    }
    else{
      print(response.statusCode);
      _isLoading=false;
    }

    update();

  }




}