import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import '../../../domain/usecases/usecases.dart';
import '../state.dart';

part 'playlist_info_event.dart';
part 'playlist_info_state.dart';

class PlaylistInfoBloc extends Bloc<PlaylistInfoEvent, CustomState> {
  final UCreatePlaylist createPlaylist;
  final URemovePlaylist removePlaylist;
  PlaylistInfoBloc(this.createPlaylist, this.removePlaylist)
      : super(PlaylistInfoInitial());

  @override
  Stream<CustomState> mapEventToState(
    PlaylistInfoEvent event,
  ) async* {
    if (event is ECreatePlaylist) {
      emit(PlaylistInfoInitial());
      emit(PlaylistLoading());
      final playListOrError = await createPlaylist(name: event.name);
      yield* playListOrError.fold(
        (failure) async* {
          yield PlaylistError(failure.message);
        },
        (playlist) => throw UnimplementedError(),
      );
    } else if (event is ERemovePlaylist) {}
  }
}
