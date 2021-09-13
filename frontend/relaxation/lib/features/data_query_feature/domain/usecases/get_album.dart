import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/album_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UGetAlbum {
  final AudioQueryRepository repository;

  UGetAlbum({required this.repository});

  Future<Either<Failure, AlbumInfo>> call({
    required String id,
  }) async {
    return await repository.getAlbum(id: id);
  }
}
