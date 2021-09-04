import 'usecase_import.dart';

class UGetAllPlaylists {
  final AudioQueryRepository repository;

  UGetAllPlaylists({required this.repository});

  Future<Either<Failure, List<PlaylistInfo>>> call() async {
    return await repository.getAllPlaylists();
  }
}
