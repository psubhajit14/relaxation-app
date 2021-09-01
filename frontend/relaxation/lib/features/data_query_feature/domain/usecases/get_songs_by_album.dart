import 'usecase_import.dart';

class GetSongsByAlbum {
  final AudioQueryRepository repository;

  GetSongsByAlbum({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required String albumid,
  }) async {
    return await repository.getSongsByAlbum(albumid: albumid);
  }
}
