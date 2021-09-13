import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class UAddSongsToPlaylist {
  final AudioQueryRepository repository;

  UAddSongsToPlaylist({required this.repository});

  Future<Either<Failure, void>> call({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  }) async {
    return await repository.addSongToPlaylist(
      playlistInfo: playlistInfo,
      songInfo: songInfo,
    );
  }
}
