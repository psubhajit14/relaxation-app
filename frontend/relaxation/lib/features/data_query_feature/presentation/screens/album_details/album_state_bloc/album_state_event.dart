part of 'album_state_bloc.dart';

@freezed
abstract class AlbumStateEvent with _$AlbumStateEvent {
  const factory AlbumStateEvent.loadSongs(String albumid) = _AlbumLoadSongs;
}
