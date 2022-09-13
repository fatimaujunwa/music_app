class AlbumList {
  List<Albums>? _albums;
List<Albums>? get album=>_albums;
  AlbumList({required albums}){
    this._albums=albums;
  }

  AlbumList.fromJson(Map<String, dynamic> json) {
    if (json['albums'] != null) {
      _albums = <Albums>[];
      json['albums'].forEach((v) {
        _albums!.add(new Albums.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._albums != null) {
      data['albums'] = this._albums!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Albums {
  int? id;
  int? tracks;
  String? title;
  String? genreTitle;
  String? thumbnail;
  String? createdAt;
  String? updatedAt;
  int? typeId;
  String? artist;

  Albums(
      {this.id,
        this.tracks,
        this.title,
        this.genreTitle,
        this.thumbnail,
        this.createdAt,
        this.updatedAt,
        this.typeId,
        this.artist,
      });

  Albums.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tracks = json['tracks'];
    title = json['title'];
    genreTitle = json['genre_title'];
    thumbnail = json['thumbnail'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
    artist=json['artist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tracks'] = this.tracks;
    data['title'] = this.title;
    data['genre_title'] = this.genreTitle;
    data['thumbnail'] = this.thumbnail;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['type_id'] = this.typeId;
    data['artist']=this.artist;
    return data;
  }
}