import 'usecase_import.dart';

class RemoveSongsToPlaylist {
  final AudioQueryRepository repository;

  RemoveSongsToPlaylist({required this.repository});

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
