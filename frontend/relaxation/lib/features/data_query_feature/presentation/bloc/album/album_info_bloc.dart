import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/usecases.dart';

part 'album_info_event.dart';
part 'album_info_state.dart';

class AlbumInfoBloc extends Bloc<AlbumInfoEvent, AlbumInfoState> {
  final UGetAlbum getAlbum;
  final UGetAllAlbums getAllAlbums;
  final USearchAllAlbums searchAllAlbums;
  AlbumInfoBloc(this.getAlbum, this.getAllAlbums, this.searchAllAlbums)
      : super(AlbumInfoInitial());

  @override
  Stream<AlbumInfoState> mapEventToState(
    AlbumInfoEvent event,
  ) async* {
    _initialProgress();
    if (event is EGetAlbum) {
      yield* await _getAlbum(event);
    } else if (event is EGetAllAlbums) {
      yield* await _getAllAlbum();
    } else if (event is ESearchAllAlbums) {
      yield* await _searchAllAlbum(event);
    }
  }

  Stream<AlbumInfoState> _searchAllAlbum(ESearchAllAlbums event) async* {
    final albumListOrError = await searchAllAlbums(query: event.query);
    yield* _loadAlbumList(albumListOrError);
  }

  Stream<AlbumInfoState> _getAllAlbum() async* {
    final albumListOrError = await getAllAlbums();
    yield* _loadAlbumList(albumListOrError);
  }

  Stream<AlbumInfoState> _getAlbum(EGetAlbum event) async* {
    final albumOrError = await getAlbum(id: event.albumId);
    yield* albumOrError.fold((failure) async* {
      yield AlbumError(failure.message);
    }, (album) async* {
      yield AlbumLoaded([album]);
    });
  }

  Stream<AlbumInfoState> _loadAlbumList(
      Either<Failure, List<AlbumInfo>> albumListOrError) async* {
    yield* albumListOrError.fold((failure) async* {
      yield AlbumError(failure.message);
    }, (albumList) async* {
      yield AlbumLoaded(albumList);
    });
  }

  void _initialProgress() {
    emit(AlbumInfoInitial());
    emit(AlbumLoading());
  }
}
