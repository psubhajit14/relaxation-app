import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UGetSong {
  final AudioQueryRepository repository;

  UGetSong({required this.repository});

  Future<Either<Failure, SongInfo>> call({
    required String id,
  }) async {
    return await repository.getSong(id: id);
  }
}
