import 'usecase_import.dart';

class SearchAllSongs {
  final AudioQueryRepository repository;

  SearchAllSongs({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllSongs(queryString: query);
  }
}
