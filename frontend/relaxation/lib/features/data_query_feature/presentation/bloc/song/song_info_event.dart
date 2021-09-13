part of 'song_info_bloc.dart';

@immutable
abstract class SongInfoEvent {}

class EClearSongs extends SongInfoEvent {
  EClearSongs();
}

class EGetSong extends SongInfoEvent {
  final String id;
  EGetSong(this.id);
}

class EGetSongByAlbum extends SongInfoEvent {
  final String albumId;
  EGetSongByAlbum(this.albumId);
}

class EGetAllSongs extends SongInfoEvent {
  EGetAllSongs();
}

class EAddSongToPlaylist extends SongInfoEvent {
  final SongInfo songInfo;
  final PlaylistInfo playlistInfo;
  EAddSongToPlaylist(this.songInfo, this.playlistInfo);
}

class ERemoveSongToPlaylist extends SongInfoEvent {
  final SongInfo songInfo;
  final PlaylistInfo playlistInfo;
  ERemoveSongToPlaylist(this.songInfo, this.playlistInfo);
}

class EGetSongsByPlaylist extends SongInfoEvent {
  final PlaylistInfo playlistInfo;
  EGetSongsByPlaylist(this.playlistInfo);
}

class ESearchAllSongs extends SongInfoEvent {
  final String query;
  ESearchAllSongs(this.query);
}
