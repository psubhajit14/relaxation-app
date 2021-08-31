import 'dart:async';

import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/entities.dart';

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

//?  -- Get List Data --------------------------
//      GetAllSongs
  Future<Either<Failure, List<SongInfo>>> getAllSongs();
  Future<Either<Failure, List<SongInfo>>> getSongsByAlbum({
    required String albumid,
  });
  Future<Either<Failure, List<SongInfo>>> getSongsByPlaylist({
    required PlaylistInfo playlistInfo,
  });
  Future<Either<Failure, List<SongInfo>>> searchAllSongs({
    String queryString,
  });
//      GetAllAlbum
  Future<Either<Failure, List<AlbumInfo>>> getAllAlbums();
  Future<Either<Failure, List<AlbumInfo>>> searchAllAlbums({
    String queryString,
  });
//      GetAllPlaylist
  Future<Either<Failure, List<PlaylistInfo>>> getAllPlaylists();

//?   -- Operation On Playlist -------------------------
//      AddSongToPlaylist
  Future<Either<Failure, PlaylistInfo>> addSongToPlaylist({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  });
//      RemoveSongToPlaylist
  Future<Either<Failure, PlaylistInfo>> removeSongToPlaylist({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  });
//      CreatePlaylist
  Future<Either<Failure, PlaylistInfo>> createPlaylist({
    required String playlistName,
  });
//      RemovePlaylist
  Future<Either<Failure, void>> removePlaylist({
    required PlaylistInfo playlistInfo,
  });
}
