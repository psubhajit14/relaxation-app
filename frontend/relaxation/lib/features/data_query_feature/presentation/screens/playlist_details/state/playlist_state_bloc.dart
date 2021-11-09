import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/remove_song_to_playlist.dart';
import 'package:relaxation/provider_dependecy.dart';

part 'playlist_state_state.dart';
part 'playlist_state_event.dart';
part 'playlist_state_bloc.freezed.dart';

class PlaylistStateBloc extends StateNotifier<AsyncValue<PlaylistStateState>> {
  PlaylistStateBloc({
    required this.ref,
    required this.getSongsByPlaylist,
    required this.removeSongsToPlaylist,
  }) : super(AsyncData(PlaylistStateState.initial())) {
    add(PlaylistStateEvent.loadSongs(ref.read(appStateProvider).playlistId));
  }
  final UGetSongsByPlaylist getSongsByPlaylist;
  final URemoveSongsToPlaylist removeSongsToPlaylist;
  final ProviderReference ref;
  Future<void> add(PlaylistStateEvent gEvent) async {
    gEvent.map(loadSongs: (e) async {
      late PlaylistInfo playlist;
      ref.read(homeStateBloc).whenData((data) {
        for (PlaylistInfo playlistInfo in data.playlists) {
          if (playlistInfo.id == e.playlistId.toString()) {
            playlist = playlistInfo;
            break;
          }
        }
      });
      print("plsylidy" + playlist.noOfSongs.toString());
      final songOrError = await getSongsByPlaylist(
        playlistInfo: playlist,
      );
      state = songOrError.fold(
        (l) => AsyncLoading(),
        (r) => AsyncData(
          PlaylistStateState.initial().copyWith(
            playlist: playlist,
            songs: r,
          ),
        ),
      );
    }, removeSong: (e) async {
      print('adsad');
      late PlaylistInfo playlist;
      await state.whenData((value) {
        playlist = value.playlist!;
      });

      final voidOrError =
          await removeSongsToPlaylist(songInfo: e.song, playlistInfo: playlist);

      final songOrError = await getSongsByPlaylist(
        playlistInfo: playlist,
      );
      state = voidOrError.fold((l) {
        print(l.message);
        return state.whenData((value) => value.copyWith());
      },
          (r) => songOrError.fold(
                (l) => AsyncLoading(),
                (r) => AsyncData(
                  PlaylistStateState.initial().copyWith(
                    playlist: playlist,
                    songs: r,
                  ),
                ),
              ));
    });
  }
}
