import 'dart:async';

import 'package:relaxation/features/data_query_feature/data/models/models.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';

abstract class AudioQueryDataSource {
//?  -- Get Single Data --------------------------
//      GetSongInfo
  /// Gets the Song
  ///
  /// Throws [NoSongFoundException] if no data is present.
  Future<SongInfoModel> getSong({
    required String id,
  });
//      GetAlbumInfo
  Future<AlbumInfoModel> getAlbum({
    required String id,
  });

//?  -- Get List Data --------------------------
//      GetAllSongs
  Future<List<SongInfoModel>> getAllSongs();
  Future<List<SongInfoModel>> getSongsByAlbum({
    required String albumid,
  });
  Future<List<SongInfoModel>> getSongsByPlaylist({
    required PlaylistInfo playlistInfo,
  });
  Future<List<SongInfoModel>> searchAllSongs({
    required String queryString,
  });
//      GetAllAlbum
  Future<List<AlbumInfoModel>> getAllAlbums();
  Future<List<AlbumInfoModel>> searchAllAlbums({
    required String queryString,
  });
//      GetAllPlaylist
  Future<List<PlaylistInfoModel>> getAllPlaylists();

//?   -- Operation On Playlist -------------------------
//      AddSongToPlaylist
  Future<void> addSongToPlaylist({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  });
//      RemoveSongToPlaylist
  Future<void> removeSongToPlaylist({
    required PlaylistInfo playlistInfo,
    required SongInfo songInfo,
  });
//      CreatePlaylist
  Future<PlaylistInfoModel> createPlaylist({
    required String playlistName,
  });
//      RemovePlaylist
  Future<void> removePlaylist({
    required PlaylistInfo playlistInfo,
  });
}
