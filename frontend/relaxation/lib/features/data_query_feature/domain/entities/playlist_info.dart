import 'package:equatable/equatable.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';

class PlaylistInfo implements Equatable {
  final String name;
  final String noOfSongs;
  final List<String> songList;

  PlaylistInfo(
      {required this.name, required this.noOfSongs, required this.songList});

  @override
  List<Object> get props => [this.name, this.noOfSongs, this.songList];

  @override
  bool get stringify => false;
}
