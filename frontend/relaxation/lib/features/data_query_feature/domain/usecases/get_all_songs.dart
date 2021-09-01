import 'usecase_import.dart';

class GetAllSongs {
  final AudioQueryRepository repository;

  GetAllSongs({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call() async {
    return await repository.getAllSongs();
  }
}
