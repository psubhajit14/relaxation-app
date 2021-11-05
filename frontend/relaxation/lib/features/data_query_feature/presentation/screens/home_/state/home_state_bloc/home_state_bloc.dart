import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/add_song_to_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_albums.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_playlists.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_songs.dart';

part 'home_state_state.dart';
part 'home_state_event.dart';
part 'home_state_bloc.freezed.dart';

class HomeStateBloc extends StateNotifier<AsyncValue<HomeStateState>> {
  HomeStateBloc(
      {required this.getAllPlaylists,
      required this.getAllAlbums,
      required this.getAllSongs,
      required this.addSongsToPlaylist})
      : super(AsyncValue.data(HomeStateState.initial())) {
    add(HomeStateEvent.loadInitial());
  }

  final UGetAllPlaylists getAllPlaylists;
  final UGetAllAlbums getAllAlbums;
  final UGetAllSongs getAllSongs;
  final UAddSongsToPlaylist addSongsToPlaylist;
  AsyncValue<HomeStateState>? previousState;

  Future<void> add(HomeStateEvent gEvent) async {
    await gEvent.map(
      loadInitial: (e) async {
        final playlistsOrError = await getAllPlaylists();
        final albumsOrError = await getAllAlbums();
        final songsOrError = await getAllSongs();
        state = state.whenData(
          (data) => playlistsOrError.fold(
            (failure) => data.copyWith(),
            (playlists) {
              return albumsOrError.fold(
                (failure) => data.copyWith(),
                (albums) {
                  return songsOrError.fold(
                    (failure) => data.copyWith(),
                    (songs) => data.copyWith(
                        songs: songs, albums: albums, playlists: playlists),
                  );
                },
              );
            },
          ),
        );
      },
      loadPlaylist: (e) async {
        final playlistsOrError = await getAllPlaylists();
        state = state.whenData(
          (data) => playlistsOrError.fold(
            (failure) => data.copyWith(),
            (playlists) => data.copyWith(playlists: playlists),
          ),
        );
      },
      loadAlbums: (e) async {
        final albumsOrError = await getAllAlbums();
        state = state.whenData(
          (data) => albumsOrError.fold(
            (failure) => data.copyWith(),
            (albums) => data.copyWith(albums: albums),
          ),
        );
      },
      loadSongs: (e) async {
        final songsOrError = await getAllSongs();
        state = state.whenData(
          (data) => songsOrError.fold(
            (failure) => data.copyWith(),
            (songs) => data.copyWith(songs: songs),
          ),
        );
      },
      addSongToPlaylist: (e) async {
        final voidOrError = await addSongsToPlaylist(
            songInfo: e.song, playlistInfo: e.playlist);
        final playlistsOrError = await getAllPlaylists();
        state = state.whenData(
          (data) => voidOrError.fold(
            (l) => data.copyWith(),
            (r) => playlistsOrError.fold(
              (failure) => data.copyWith(),
              (playlists) => data.copyWith(playlists: playlists),
            ),
          ),
        );
      },
      toggleSwitch: (e) async {
        state = state.whenData(
          (data) => data.copyWith(toggleSwitchState: e.index),
        );
      },
    );
  }
}
