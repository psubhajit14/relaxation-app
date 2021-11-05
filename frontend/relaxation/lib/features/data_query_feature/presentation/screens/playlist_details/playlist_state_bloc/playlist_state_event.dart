part of 'playlist_state_bloc.dart';

@freezed
abstract class PlaylistStateEvent with _$PlaylistStateEvent {
  const factory PlaylistStateEvent.loadSongs(int playlistId) =
      _PlaylistLoadSongs;
}
