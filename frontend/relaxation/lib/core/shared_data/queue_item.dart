import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';

class QueueItem extends SongInfo {
  final String id;
  final String path;
  final String title;
  final String duration;
  final String artist;
  final String album;
  final String fileSize;
  final String artworkPath;

  QueueItem(
    this.id,
    this.path,
    this.title,
    this.duration,
    this.artist,
    this.album,
    this.fileSize,
    this.artworkPath,
  ) : super(
            id: id,
            path: path,
            title: title,
            duration: duration,
            artist: artist,
            album: album,
            fileSize: fileSize,
            artworkPath: artworkPath);
  factory QueueItem.fromDevice(SongInfo songInfo) {
    return QueueItem(
        songInfo.id,
        songInfo.path,
        songInfo.title,
        songInfo.duration,
        songInfo.artist,
        songInfo.album,
        songInfo.fileSize,
        songInfo.artworkPath);
  }
}
