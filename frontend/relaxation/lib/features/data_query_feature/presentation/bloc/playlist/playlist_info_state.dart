part of 'playlist_info_bloc.dart';

@immutable
abstract class PlaylistInfoState extends CustomState {}

class PlaylistInfoInitial extends PlaylistInfoState {}

class PlaylistLoading extends PlaylistInfoState {}

class PlaylistLoaded extends PlaylistInfoState {
  final List<PlaylistInfo> playListList;
  PlaylistLoaded(this.playListList);
}

class PlaylistError extends PlaylistInfoState {
  final String message;
  PlaylistError(this.message);
}
