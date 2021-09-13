import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UGetSongsByPlaylist {
  final AudioQueryRepository repository;

  UGetSongsByPlaylist({required this.repository});

  Future<Either<Failure, List<SongInfo>>> call({
    required PlaylistInfo playlistInfo,
  }) async {
    return await repository.getSongsByPlaylist(playlistInfo: playlistInfo);
  }
}
