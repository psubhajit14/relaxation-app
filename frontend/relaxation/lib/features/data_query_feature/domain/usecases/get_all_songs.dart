import 'usecase_import.dart';

class UGetAllSongs {
  final AudioQueryRepository repository;

  UGetAllSongs({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call() async {
    return await repository.getAllSongs();
  }
}
