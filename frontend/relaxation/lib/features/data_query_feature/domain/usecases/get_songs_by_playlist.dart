import 'usecase_import.dart';

class GetSongsByPlaylist {
  final AudioQueryRepository repository;

  GetSongsByPlaylist({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required PlaylistInfo playlistInfo,
  }) async {
    return await repository.getSongsByPlaylist(playlistInfo: playlistInfo);
  }
}
