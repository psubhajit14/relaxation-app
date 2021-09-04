import 'usecase_import.dart';

class USearchAllSongs {
  final AudioQueryRepository repository;

  USearchAllSongs({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllSongs(queryString: query);
  }
}
