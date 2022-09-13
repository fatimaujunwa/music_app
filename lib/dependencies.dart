
import 'package:flutter_music_app/controllers/album_controller.dart';
import 'package:flutter_music_app/repositories/album_repo.dart';
import 'package:flutter_music_app/repositories/auth_repo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'api_client.dart';
import 'app_constants/uri_elements.dart';
import 'controllers/auth_controllers.dart';

Future<void>init(
    )async{
  // final sharedPreferences=await SharedPreferences.getInstance();
  Get.lazyPut(()=> ApiClient(appBaseUrl: AppConstants.BASE_URI));
  Get.lazyPut(() => AuthRepo(
    apiClient: Get.find(),
  ));
  Get.lazyPut(() => AlbumRepo(apiClient: Get.find()));
  Get.lazyPut(() => AlbumsController(albumRepo: Get.find()));

  // Get.lazyPut(() => sharedPreferences);

  Get.lazyPut(() => AuthController( repo: Get.find()));

}