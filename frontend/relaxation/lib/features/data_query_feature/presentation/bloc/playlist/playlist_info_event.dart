part of 'playlist_info_bloc.dart';

@immutable
abstract class PlaylistInfoEvent {}

class EGetAllPlaylists extends PlaylistInfoEvent {
  EGetAllPlaylists();
}

class ECreatePlaylist extends PlaylistInfoEvent {
  final String name;
  ECreatePlaylist(this.name);
}

class ERemovePlaylist extends PlaylistInfoEvent {
  final PlaylistInfo playlist;
  ERemovePlaylist(this.playlist);
}
