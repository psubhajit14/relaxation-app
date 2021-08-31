import 'package:flutter_audio_query/flutter_audio_query.dart' as faq;

import '../../domain/entities/album_info.dart';

class AlbumInfoModel extends AlbumInfo {
  final String id;
  final String title;
  final String noOfSongs;
  final String albumArt;

  AlbumInfoModel(
      {required this.id,
      required this.title,
      required this.noOfSongs,
      required this.albumArt})
      : super(id: id, title: title, noOfSongs: noOfSongs, albumArt: albumArt);

  @override
  List<Object> get props => [this.id];

  @override
  bool get stringify => false;

  factory AlbumInfoModel.fromDevice(faq.AlbumInfo albumInfo) {
    return AlbumInfoModel(
        id: albumInfo.id,
        title: albumInfo.title,
        noOfSongs: albumInfo.numberOfSongs,
        albumArt: albumInfo.albumArt);
  }
}
