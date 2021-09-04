import 'usecase_import.dart';

class UGetSongsByAlbum {
  final AudioQueryRepository repository;

  UGetSongsByAlbum({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required String albumid,
  }) async {
    return await repository.getSongsByAlbum(albumid: albumid);
  }
}
