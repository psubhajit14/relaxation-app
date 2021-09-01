import 'usecase_import.dart';

class GetAlbum {
  final AudioQueryRepository repository;

  GetAlbum({required this.repository});

  Future<Either<Failure, AlbumInfo>> call({
    required String id,
  }) async {
    return await repository.getAlbum(id: id);
  }
}
