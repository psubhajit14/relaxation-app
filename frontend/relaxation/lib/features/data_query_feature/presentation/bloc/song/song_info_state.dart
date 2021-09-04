part of 'song_info_bloc.dart';

@immutable
abstract class SongInfoState extends CustomState {}

class SongInfoInitial extends SongInfoState {}

class SongLoading extends SongInfoState {}

class SongLoaded extends SongInfoState {
  final List<SongInfo> songList;
  SongLoaded(this.songList);
}

class SongError extends SongInfoState {
  final String message;
  SongError(this.message);
}
