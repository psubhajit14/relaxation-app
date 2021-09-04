import 'usecase_import.dart';

class UAddSongsToPlaylist {
  final AudioQueryRepository repository;

  UAddSongsToPlaylist({required this.repository});

  Future<Either<Failure, void>> call({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  }) async {
    return await repository.addSongToPlaylist(
      playlistInfo: playlistInfo,
      songInfo: songInfo,
    );
  }
}
