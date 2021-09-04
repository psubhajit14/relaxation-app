import 'usecase_import.dart';

class URemovePlaylist {
  final AudioQueryRepository repository;

  URemovePlaylist({required this.repository});

  Future<Either<Failure, void>> call({
    required PlaylistInfo playlistInfo,
  }) async {
    return await repository.removePlaylist(playlistInfo: playlistInfo);
  }
}
