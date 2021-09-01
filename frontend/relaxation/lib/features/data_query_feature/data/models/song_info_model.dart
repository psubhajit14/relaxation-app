// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart' as faq;
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';

class SongInfoModel extends SongInfo {
  final String id;
  final String path;

  final String title;

  final String duration;

  final String artist;

  final String album;

  final String fileSize;

  final String artworkPath;

  SongInfoModel(
      {required this.id,
      required this.path,
      required this.title,
      required this.duration,
      required this.artist,
      required this.album,
      required this.fileSize,
      required this.artworkPath})
      : super(
            id: id,
            path: path,
            title: title,
            duration: duration,
            artist: artist,
            album: album,
            fileSize: fileSize,
            artworkPath: artworkPath);

  @override
  List<Object> get props => [this.id];

  @override
  bool get stringify => false;

  factory SongInfoModel.fromDevice(faq.SongInfo songInfo) {
    return SongInfoModel(
        id: songInfo.id,
        path: songInfo.filePath,
        title: songInfo.title,
        duration: songInfo.duration,
        artist: songInfo.artist,
        album: songInfo.album,
        fileSize: songInfo.fileSize,
        artworkPath: songInfo.albumArtwork);
  }
}
