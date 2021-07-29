import 'usecase_import.dart';

class SearchAllAlbums {
  final AudioQueryRepository repository;

  SearchAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllAlbums(queryString: query);
  }
}
