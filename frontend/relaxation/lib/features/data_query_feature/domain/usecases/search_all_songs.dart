import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class USearchAllSongs {
  final AudioQueryRepository repository;

  USearchAllSongs({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required String query,
  }) async {
    return await repository.searchAllSongs(queryString: query);
  }
}
