import 'usecase_import.dart';

class URemoveSongsToPlaylist {
  final AudioQueryRepository repository;

  URemoveSongsToPlaylist({required this.repository});

  Future<Either<Failure, void>> call({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  }) async {
    return await repository.removeSongToPlaylist(
      playlistInfo: playlistInfo,
      songInfo: songInfo,
    );
  }
}
