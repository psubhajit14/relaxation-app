import 'usecase_import.dart';

class RemovePlaylist {
  final AudioQueryRepository repository;

  RemovePlaylist({required this.repository});

  Future<Either<Failure, void>> call({
    required PlaylistInfo playlistInfo,
  }) async {
    return await repository.removePlaylist(playlistInfo: playlistInfo);
  }
}
