import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../api_client.dart';
import '../app_constants/uri_elements.dart';

class AlbumRepo extends GetxService{
  final ApiClient apiClient;
  // final SharedPreferences sharedPreferences;
  AlbumRepo({required this.apiClient});

  Future<Response>getAlbums()async{

    return await apiClient.getData(AppConstants.RECENTLY_URI);



  }
  Future<Response>getSongs(int album_id)async{
    return await apiClient.get('${AppConstants.SONGS_URI}?album_id=$album_id');
  }
}