import 'usecase_import.dart';

class USearchAllAlbums {
  final AudioQueryRepository repository;

  USearchAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllAlbums(queryString: query);
  }
}
