import 'usecase_import.dart';

class UGetAllAlbums {
  final AudioQueryRepository repository;

  UGetAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call() async {
    return await repository.getAllAlbums();
  }
}
