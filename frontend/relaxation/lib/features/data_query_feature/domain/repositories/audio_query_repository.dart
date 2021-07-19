import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';

abstract class AudioQueryRepository {
//?  -- Get Single Data --------------------------
//      GetSongInfo
  Future<Either<Failure, SongInfo>> getSong({
    required String id,
  });
//      GetAlbumInfo
  Future<Either<Failure, AlbumInfo>> getAlbum({
    required String id,
  });
//      GetPlaylistInfo
  Future<Either<Failure, PlaylistInfo>> getPlaylist();

//?  -- Get List Data --------------------------
//      GetAllSongs
  Future<Either<Failure, List<SongInfo>>> getAllSong();
  Future<Either<Failure, List<SongInfo>>> getSongByAlbum({
    required String albumid,
  });
  Future<Either<Failure, List<SongInfo>>> getSongByPlaylist({
    required PlaylistInfo playlistInfo,
  });
  Future<Either<Failure, List<SongInfo>>> searchAllSong({
    String queryString,
  });
//      GetAllAlbum
  Future<Either<Failure, List<AlbumInfo>>> getAllAlbum();
  Future<Either<Failure, List<AlbumInfo>>> searchAllAlbum({
    String queryString,
  });
//      GetAllPlaylist
  Future<Either<Failure, List<PlaylistInfo>>> getAllPlaylist();

//?   -- Operation On Playlist -------------------------
//      AddSongToPlaylist
  Future<Either<Failure, PlaylistInfo>> addSongToPlaylist({
    required PlaylistInfo playlistInfo,
  });
//      RemoveSongToPlaylist
  Future<Either<Failure, PlaylistInfo>> removeSongToPlaylist({
    required PlaylistInfo playlistInfo,
  });
//      CreatePlaylist
  Future<Either<Failure, PlaylistInfo>> createPlaylist({
    required String playlistName,
  });
//      RemovePlaylist
  Future<Either<Failure, PlaylistInfo>> removePlaylist({
    required PlaylistInfo playlistInfo,
  });
}
