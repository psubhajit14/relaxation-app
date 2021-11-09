import 'package:equatable/equatable.dart';

class AlbumInfo extends Equatable {
  final String id;
  final String title;
  final String noOfSongs;
  final String albumArt;

  AlbumInfo(
      {required this.id,
      required this.title,
      required this.noOfSongs,
      required this.albumArt});

  @override
  List<Object> get props => [this.id];

  @override
  bool get stringify => true;
}
