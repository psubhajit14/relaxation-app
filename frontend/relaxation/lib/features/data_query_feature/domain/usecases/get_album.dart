import 'usecase_import.dart';

class UGetAlbum {
  final AudioQueryRepository repository;

  UGetAlbum({required this.repository});

  Future<Either<Failure, AlbumInfo>> call({
    required String id,
  }) async {
    return await repository.getAlbum(id: id);
  }
}
