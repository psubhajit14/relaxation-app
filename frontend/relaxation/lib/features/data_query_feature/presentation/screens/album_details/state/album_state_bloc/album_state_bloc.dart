import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_album.dart';
import 'package:relaxation/provider_dependecy.dart';

part 'album_state_state.dart';
part 'album_state_event.dart';
part 'album_state_bloc.freezed.dart';

class AlbumStateBloc extends StateNotifier<AsyncValue<AlbumStateState>> {
  AlbumStateBloc({required this.ref, required this.getSongsByAlbum})
      : super(AsyncData(AlbumStateState.initial())) {
    add(AlbumStateEvent.loadSongs(
        ref.read(appStateProvider).albumId.toString()));
  }
  final ProviderReference ref;
  final UGetSongsByAlbum getSongsByAlbum;

  Future<void> add(AlbumStateEvent gEvent) async {
    gEvent.map(
      loadSongs: (e) async {
        final songsOrError = await getSongsByAlbum(albumid: e.albumid);
        state = state.whenData((data) => songsOrError.fold(
              (failure) => data.copyWith(),
              (songs) => data.copyWith(songs: songs),
            ));
      },
    );
  }
}
