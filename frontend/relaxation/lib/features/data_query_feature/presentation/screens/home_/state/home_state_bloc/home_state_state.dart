part of 'home_state_bloc.dart';

@freezed
abstract class HomeStateState with _$HomeStateState {
  const factory HomeStateState({
    required List<PlaylistInfo> playlists,
    required List<AlbumInfo> albums,
    required List<SongInfo> songs,
    required int toggleSwitchState,
  }) = _HomeStateState;
  factory HomeStateState.initial() => HomeStateState(
        playlists: [],
        albums: [],
        songs: [],
        toggleSwitchState: 0,
      );
}
