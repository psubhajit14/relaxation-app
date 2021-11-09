part of 'playlist_state_bloc.dart';

@freezed
abstract class PlaylistStateState with _$PlaylistStateState {
  const factory PlaylistStateState({
    PlaylistInfo? playlist,
    required List<SongInfo> songs,
  }) = _PlaylistStateState;
  factory PlaylistStateState.initial() => PlaylistStateState(
        songs: [],
      );
}
