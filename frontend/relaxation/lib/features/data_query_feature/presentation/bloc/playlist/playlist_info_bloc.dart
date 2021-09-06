import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import '../../../domain/usecases/usecases.dart';

part 'playlist_info_event.dart';
part 'playlist_info_state.dart';

class PlaylistInfoBloc extends Bloc<PlaylistInfoEvent, PlaylistInfoState> {
  final UCreatePlaylist createPlaylist;
  final URemovePlaylist removePlaylist;
  final UGetAllPlaylists getAllPlaylists;
  PlaylistInfoBloc(
      this.createPlaylist, this.removePlaylist, this.getAllPlaylists)
      : super(PlaylistInfoInitial());

  @override
  Stream<PlaylistInfoState> mapEventToState(
    PlaylistInfoEvent event,
  ) async* {
    _initialProgress();
    if (event is ECreatePlaylist) {
      yield* _createPlaylist(event);
    } else if (event is ERemovePlaylist) {
      yield* _removePlaylist(event);
    } else if (event is EGetAllPlaylists) {
      yield* _getAllPlaylist();
    }
  }

  Stream<PlaylistInfoState> _getAllPlaylist() async* {
    final playlistListOrError = await getAllPlaylists();
    yield* playlistListOrError.fold((failure) async* {
      yield PlaylistError(failure.message);
    }, (playlistList) async* {
      yield PlaylistLoaded(playlistList);
    });
  }

  Stream<PlaylistInfoState> _removePlaylist(ERemovePlaylist event) async* {
    final voidOrError = await removePlaylist(playlistInfo: event.playlist);
    yield* voidOrError.fold(
      (failure) async* {
        yield PlaylistError(failure.message);
      },
      (Void) async* {
        yield* _getAllPlaylist();
      },
    );
  }

  Stream<PlaylistInfoState> _createPlaylist(ECreatePlaylist event) async* {
    final playListOrError = await createPlaylist(name: event.name);
    yield* playListOrError.fold(
      (failure) async* {
        yield PlaylistError(failure.message);
      },
      (playlist) async* {
        List<PlaylistInfo> playlistList = List.from(state.data);
        playlistList.add(playlist);
        yield PlaylistLoaded(playlistList);
      },
    );
  }

  void _initialProgress() {
    emit(PlaylistInfoInitial());
    emit(PlaylistLoading());
  }
}
