import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_playlist.dart';
import 'package:relaxation/provider_dependecy.dart';

part 'playlist_state_state.dart';
part 'playlist_state_event.dart';
part 'playlist_state_bloc.freezed.dart';

class PlaylistStateBloc extends StateNotifier<AsyncValue<PlaylistStateState>> {
  PlaylistStateBloc({
    required this.read,
    required this.getSongsByPlaylist,
  }) : super(AsyncData(PlaylistStateState.initial()));
  final Reader read;
  final UGetSongsByPlaylist getSongsByPlaylist;

  Future<void> add(PlaylistStateEvent gEvent) async {
    gEvent.map(
      loadSongs: (e) async {
        read(homeStateBloc).whenData(
          (value) => value.playlists.forEach((element) async {
            if (element.id == e.playlistId) {
              final songsOrError =
                  await getSongsByPlaylist(playlistInfo: element);
              state = state.whenData(
                (data) => songsOrError.fold(
                  (failure) => data.copyWith(playlist: element),
                  (songs) => data.copyWith(songs: songs, playlist: element),
                ),
              );
              return;
            }
          }),
        );
      },
    );
  }
}
