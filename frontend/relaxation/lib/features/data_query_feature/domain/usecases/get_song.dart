import 'usecase_import.dart';

class UGetSong {
  final AudioQueryRepository repository;

  UGetSong({required this.repository});

  Future<Either<Failure, SongInfo>> call({
    required String id,
  }) async {
    return await repository.getSong(id: id);
  }
}
