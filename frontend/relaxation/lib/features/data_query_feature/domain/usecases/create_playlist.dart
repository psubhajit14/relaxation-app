import 'usecase_import.dart';

class UCreatePlaylist {
  final AudioQueryRepository repository;

  UCreatePlaylist({required this.repository});

  Future<Either<Failure, PlaylistInfo>> call({
    required String name,
  }) async {
    return await repository.createPlaylist(playlistName: name);
  }
}
