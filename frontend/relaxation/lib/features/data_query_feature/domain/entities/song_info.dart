import 'package:equatable/equatable.dart';

class SongInfo extends Equatable {
  final String id;
  final String path;

  final String title;

  final String duration;

  final String artist;

  final String album;

  final String fileSize;

  final String artworkPath;

  SongInfo(
      {required this.id,
      required this.path,
      required this.title,
      required this.duration,
      required this.artist,
      required this.album,
      required this.fileSize,
      required this.artworkPath});

  @override
  List<Object> get props => [this.id];

  @override
  bool get stringify => false;
}
