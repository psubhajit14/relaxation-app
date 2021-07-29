import 'usecase_import.dart';

class CreatePlaylist {
  final AudioQueryRepository repository;

  CreatePlaylist({required this.repository});

  Future<Either<Failure, PlaylistInfo>> call({
    required String name,
  }) async {
    return await repository.createPlaylist(playlistName: name);
  }
}
