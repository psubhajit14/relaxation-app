part of 'home_state_bloc.dart';

@freezed
abstract class HomeStateEvent with _$HomeStateEvent {
  const factory HomeStateEvent.loadInitial() = _HomeLoadInitialData;
  const factory HomeStateEvent.loadPlaylist() = _HomeLoadPlaylist;
  const factory HomeStateEvent.loadAlbums() = _HomeLoadAlbums;
  const factory HomeStateEvent.loadSongs() = _HomeLoadSongs;
  const factory HomeStateEvent.toggleSwitch(int index) = _HomeToggleSwitch;
  const factory HomeStateEvent.addSongToPlaylist(
      {required PlaylistInfo playlist,
      required SongInfo song}) = _HomeAddSongToPlaylist;

  const factory HomeStateEvent.createPlaylist(String name) =
      _HomeCreatePlaylist;
  const factory HomeStateEvent.removePlaylist(PlaylistInfo playlist) =
      _HomeRemovePlaylist;
}
