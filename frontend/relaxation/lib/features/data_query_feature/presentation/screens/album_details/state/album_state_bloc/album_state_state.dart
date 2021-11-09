part of 'album_state_bloc.dart';

@freezed
abstract class AlbumStateState with _$AlbumStateState {
  const factory AlbumStateState({
    required List<SongInfo> songs,
  }) = _AlbumStateState;
  factory AlbumStateState.initial() => AlbumStateState(
        songs: [],
      );
}
