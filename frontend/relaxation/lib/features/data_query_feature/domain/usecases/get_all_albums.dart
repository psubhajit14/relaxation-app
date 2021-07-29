import 'usecase_import.dart';

class GetAllAlbums {
  final AudioQueryRepository repository;

  GetAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call() async {
    return await repository.getAllAlbums();
  }
}
