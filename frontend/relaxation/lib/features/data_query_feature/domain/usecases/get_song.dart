import 'usecase_import.dart';

class GetSong {
  final AudioQueryRepository repository;

  GetSong({required this.repository});

  Future<Either<Failure, SongInfo>> call({
    required String id,
  }) async {
    return await repository.getSong(id: id);
  }
}
