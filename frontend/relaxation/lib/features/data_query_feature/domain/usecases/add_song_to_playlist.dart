import 'usecase_import.dart';

class AddSongsToPlaylist {
  final AudioQueryRepository repository;

  AddSongsToPlaylist({required this.repository});

  Future<Either<Failure, PlaylistInfo>> call({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  }) async {
    return await repository.addSongToPlaylist(
      playlistInfo: playlistInfo,
      songInfo: songInfo,
    );
  }
}
