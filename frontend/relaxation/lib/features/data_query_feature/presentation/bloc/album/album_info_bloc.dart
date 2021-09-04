import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import '../state.dart';

part 'album_info_event.dart';
part 'album_info_state.dart';

class AlbumInfoBloc extends Bloc<AlbumInfoEvent, CustomState> {
  AlbumInfoBloc() : super(AlbumInfoInitial());

  @override
  Stream<CustomState> mapEventToState(
    AlbumInfoEvent event,
  ) async* {
    if (event is EGetAlbum) {
    } else if (event is EGetAllAlbums) {
    } else if (event is ESearchAllAlbums) {}
  }
}
