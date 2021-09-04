import 'usecase_import.dart';

class UGetSongsByPlaylist {
  final AudioQueryRepository repository;

  UGetSongsByPlaylist({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required PlaylistInfo playlistInfo,
  }) async {
    return await repository.getSongsByPlaylist(playlistInfo: playlistInfo);
  }
}
