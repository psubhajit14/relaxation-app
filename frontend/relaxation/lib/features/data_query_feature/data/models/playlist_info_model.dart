// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart' as faq;
import '../../domain/entities/playlist_info.dart';

class PlaylistInfoModel extends PlaylistInfo {
  final String name;
  final String noOfSongs;
  final List<String> songList;

  PlaylistInfoModel(
      {required this.name, required this.noOfSongs, required this.songList})
      : super(name: name, noOfSongs: noOfSongs, songList: songList);

  @override
  List<Object> get props => [this.name, this.noOfSongs, this.songList];

  @override
  bool get stringify => false;

  factory PlaylistInfoModel.fromDevice(faq.PlaylistInfo playlistInfo) {
    return PlaylistInfoModel(
        name: playlistInfo.name,
        noOfSongs: playlistInfo.memberIds.length.toString(),
        songList: playlistInfo.memberIds);
  }
}
