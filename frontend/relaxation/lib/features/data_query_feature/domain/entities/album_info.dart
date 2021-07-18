import 'package:equatable/equatable.dart';

class AlbumInfo extends Equatable {
  final String title;
  final String noOfSongs;
  final String albumArt;

  AlbumInfo(
      {required this.title, required this.noOfSongs, required this.albumArt});

  @override
  List<Object> get props => [this.title, this.noOfSongs, this.albumArt];

  @override
  bool get stringify => false;
}
