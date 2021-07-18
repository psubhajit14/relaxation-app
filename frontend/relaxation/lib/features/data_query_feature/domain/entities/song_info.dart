import 'package:equatable/equatable.dart';

class SongInfo extends Equatable {
  final String path;

  final String title;

  final String duration;

  final String artist;

  final String album;

  final String fileSize;

  final String artworkPath;

  SongInfo(
      {required this.path,
      required this.title,
      required this.duration,
      required this.artist,
      required this.album,
      required this.fileSize,
      required this.artworkPath});

  @override
  List<Object> get props => [this.path, this.title, this.duration];

  @override
  bool get stringify => false;
}
