import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/usecases.dart';

part 'song_info_event.dart';
part 'song_info_state.dart';

class SongInfoBloc extends Bloc<SongInfoEvent, SongInfoState> {
  final UGetSong getSong;
  final UGetSongsByAlbum getSongsByAlbum;
  final UGetSongsByPlaylist getSongsByPlaylist;
  final UGetAllSongs getAllSongs;
  final UAddSongsToPlaylist addSongsToPlaylist;
  final URemoveSongsToPlaylist removeSongsToPlaylist;
  final USearchAllSongs searchAllSongs;
  SongInfoBloc(
      this.getSong,
      this.getSongsByAlbum,
      this.getSongsByPlaylist,
      this.getAllSongs,
      this.addSongsToPlaylist,
      this.removeSongsToPlaylist,
      this.searchAllSongs)
      : super(SongInfoInitial());

  @override
  Stream<SongInfoState> mapEventToState(
    SongInfoEvent event,
  ) async* {
    _initialProgress();
    if (event is EGetSong) {
      yield* await _getSong(event);
    } else if (event is EGetAllSongs) {
      final songListOrError = await getAllSongs();
      yield* await _loadSongList(songListOrError);
    } else if (event is EGetSongByAlbum) {
      final songListOrError = await getSongsByAlbum(albumid: event.albumId);
      yield* await _loadSongList(songListOrError);
    } else if (event is EGetSongsByPlaylist) {
      yield* await _getSongsByPlaylist(event.playlistInfo);
    } else if (event is EAddSongToPlaylist) {
      final songListOrError = await addSongsToPlaylist(
          playlistInfo: event.playlistInfo, songInfo: event.songInfo);
      yield* await _addOrRemoveSong(songListOrError, event.playlistInfo);
    } else if (event is ERemoveSongToPlaylist) {
      final songListOrError = await removeSongsToPlaylist(
          playlistInfo: event.playlistInfo, songInfo: event.songInfo);
      yield* await _addOrRemoveSong(songListOrError, event.playlistInfo);
    } else if (event is ESearchAllSongs) {
      final songListOrError = await searchAllSongs(query: event.query);
      yield* await _loadSongList(songListOrError);
    }
  }

  Stream<SongInfoState> _addOrRemoveSong(
      Either<Failure, void> songListOrError, PlaylistInfo playlistInfo) async* {
    yield* songListOrError.fold((failure) async* {
      yield SongError(failure.message);
    }, (Void) async* {
      yield* await _getSongsByPlaylist(playlistInfo);
    });
  }

  Stream<SongInfoState> _getSongsByPlaylist(PlaylistInfo playlistInfo) async* {
    final songListOrError =
        await getSongsByPlaylist(playlistInfo: playlistInfo);
    yield* await _loadSongList(songListOrError);
  }

  Stream<SongInfoState> _loadSongList(
      Either<Failure, List<SongInfo>> songListOrError) async* {
    yield* songListOrError.fold((failure) async* {
      yield SongError(failure.message);
    }, (songList) async* {
      yield SongLoaded(songList);
    });
  }

  Stream<SongInfoState> _getSong(EGetSong event) async* {
    final songOrError = await getSong(id: event.id);
    yield* songOrError.fold((failure) async* {
      yield SongError(failure.message);
    }, (song) async* {
      yield SongLoaded([song]);
    });
  }

  void _initialProgress() {
    emit(SongInfoInitial());
    emit(SongLoading());
  }
}
