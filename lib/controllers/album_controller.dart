import 'package:flutter_music_app/data/models/album_model.dart';
import 'package:flutter_music_app/repositories/album_repo.dart';
import 'package:get/get.dart';

import '../data/models/songs_model.dart';





class AlbumsController extends GetxController{
  final AlbumRepo albumRepo;
  AlbumsController({required this.albumRepo});
  List<Albums>_albums=[];
  List<Albums>get albums=>_albums;
  List<Songs>_songList=[];
  List<Songs> get songList=>_songList;
  bool _isLoaded= false;
  bool get isLoaded=>_isLoaded;
  Future<void>getAlbums()async{
    Response response=await albumRepo.getAlbums();
    if(response.statusCode==200){
      print('loaded');
      _isLoaded=true;
      _albums=[];
      _albums.addAll(AlbumList.fromJson(response.body).album!);

      update();
    }
  }

  Future<void>getSongs(int album_id)async{
    Response response=await albumRepo.getSongs(album_id);
    if(response.statusCode==200){
      _isLoaded=true;

      _songList.addAll(Song.fromJson(response.body).songs!);

      print(response.body);

      update();
    }
    else{
      print(response.statusCode);
      _isLoaded=false;
    }
  }





}