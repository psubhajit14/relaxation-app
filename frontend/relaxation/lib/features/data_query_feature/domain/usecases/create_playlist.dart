import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UCreatePlaylist {
  final AudioQueryRepository repository;

  UCreatePlaylist({required this.repository});

  Future<Either<Failure, PlaylistInfo>> call({
    required String name,
  }) async {
    return await repository.createPlaylist(playlistName: name);
  }
}
