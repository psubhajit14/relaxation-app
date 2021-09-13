import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/album_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UGetAllAlbums {
  final AudioQueryRepository repository;

  UGetAllAlbums({required this.repository});

  Future<Either<Failure, List<AlbumInfo>>> call() async {
    return await repository.getAllAlbums();
  }
}
