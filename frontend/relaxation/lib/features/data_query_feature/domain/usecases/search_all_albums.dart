import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/album_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class USearchAllAlbums {
  final AudioQueryRepository repository;

  USearchAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllAlbums(queryString: query);
  }
}
