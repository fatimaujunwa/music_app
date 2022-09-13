class Song {
  List<Songs>? _songs;
  List<Songs>?get songs=>_songs;

  Song({required songs}){
    this._songs=songs;
  }

  Song.fromJson(Map<String, dynamic> json) {
    if (json['songs'] != null) {
      _songs = <Songs>[];
      json['songs'].forEach((v) {
        _songs!.add(new Songs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._songs != null) {
      data['songs'] = this._songs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Songs {
  int? id;
  String? title;
  String? albumId;
  String? thumbnail;
  String? createdAt;
  String? updatedAt;

  Songs(
      {this.id,
        this.title,
        this.albumId,
        this.thumbnail,
        this.createdAt,
        this.updatedAt});

  Songs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    albumId = json['album_id'];
    thumbnail = json['thumbnail'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['album_id'] = this.albumId;
    data['thumbnail'] = this.thumbnail;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}