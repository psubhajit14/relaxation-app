import 'package:equatable/equatable.dart';

class PlaylistInfo implements Equatable {
  final String id;
  final String name;
  final String noOfSongs;
  final List<String> songList;

  PlaylistInfo(
      {required this.id,
      required this.name,
      required this.noOfSongs,
      required this.songList});

  @override
  List<Object> get props => [this.id, this.name, this.noOfSongs, this.songList];

  @override
  bool get stringify => true;
}
