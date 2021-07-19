import 'package:equatable/equatable.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';

class Playlist implements Equatable {
  final String name;
  final String noOfSongs;
  final List<SongInfo> songList;

  Playlist(
      {required this.name, required this.noOfSongs, required this.songList});

  @override
  List<Object> get props => [this.name, this.noOfSongs, this.songList];

  @override
  bool get stringify => false;
}
