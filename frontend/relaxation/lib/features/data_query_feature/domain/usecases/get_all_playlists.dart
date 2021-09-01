import 'usecase_import.dart';

class GetAllPlaylists {
  final AudioQueryRepository repository;

  GetAllPlaylists({required this.repository});

  Future<Either<Failure, List<PlaylistInfo>>> call() async {
    return await repository.getAllPlaylists();
  }
}
