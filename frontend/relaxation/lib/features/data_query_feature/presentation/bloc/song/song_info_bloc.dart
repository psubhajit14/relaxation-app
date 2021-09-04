import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/usecases.dart'
    as usecase;
import '../state.dart';

part 'song_info_event.dart';
part 'song_info_state.dart';

class SongInfoBloc extends Bloc<SongInfoEvent, CustomState> {
  final usecase.UGetSong getSong;
  final usecase.UGetSongsByAlbum getSongsByAlbum;
  final usecase.UGetSongsByPlaylist getSongsByPlaylist;
  final usecase.UGetAllSongs getAllSongs;
  final usecase.UAddSongsToPlaylist addSongsToPlaylist;
  final usecase.URemoveSongsToPlaylist removeSongsToPlaylist;
  final usecase.USearchAllSongs searchAllSongs;
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
  Stream<CustomState> mapEventToState(
    SongInfoEvent event,
  ) async* {
    if (event is EGetSong) {
    } else if (event is EGetAllSongs) {
    } else if (event is EGetSongByAlbum) {
    } else if (event is EGetSongsByPlaylist) {
    } else if (event is EAddSongToPlaylist) {
    } else if (event is ERemoveSongToPlaylist) {
    } else if (event is ESearchAllSongs) {}
  }
}
