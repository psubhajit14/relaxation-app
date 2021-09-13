import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UGetAllPlaylists {
  final AudioQueryRepository repository;

  UGetAllPlaylists({required this.repository});

  Future<Either<Failure, List<PlaylistInfo>>> call() async {
    return await repository.getAllPlaylists();
  }
}
