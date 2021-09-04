// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart' as faq;
import 'package:relaxation/core/utils.dart';
import 'package:relaxation/features/data_query_feature/data/datasources/audio_query_datasource.dart';
import 'package:relaxation/features/data_query_feature/data/models/models.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/core/error/exception.dart';

class AudioQueryDatasourceImpl extends AudioQueryDataSource {
  final faq.FlutterAudioQuery flutterAudioQuery;

  AudioQueryDatasourceImpl(this.flutterAudioQuery);

  Future<faq.SongInfo> _getSongInfo(SongInfo songInfo) async {
    faq.SongInfo? song =
        Utils.getItem(await flutterAudioQuery.getSongs(), songInfo.id);
    if (song == null) throw NoSongFoundException();
    return song;
  }

  Future<faq.PlaylistInfo> _getPlaylistInfo(PlaylistInfo playlistInfo) async {
    faq.PlaylistInfo? playlist = Utils.getItem(
        await flutterAudioQuery.getPlaylists(), playlistInfo.name);
    if (playlist == null) throw NoPlayListFoundException();
    return playlist;
  }

  @override
  Future<void> addSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    (await _getPlaylistInfo(playlistInfo))
        .addSong(song: await _getSongInfo(songInfo));
  }

  @override
  Future<PlaylistInfoModel> createPlaylist(
      {required String playlistName}) async {
    if (playlistName == '') throw NoDataFoundException();
    return PlaylistInfoModel.fromDevice(
        await faq.FlutterAudioQuery.createPlaylist(playlistName: playlistName));
  }

  @override
  Future<AlbumInfoModel> getAlbum({required String id}) async {
    faq.AlbumInfo? album =
        Utils.getItem(await flutterAudioQuery.getAlbums(), id);
    if (album == null) throw NoSongFoundException();
    return AlbumInfoModel.fromDevice(album);
  }

  @override
  Future<List<AlbumInfoModel>> getAllAlbums() async {
    List<faq.AlbumInfo> _albumInfoList = await flutterAudioQuery.getAlbums();
    List<AlbumInfoModel> albumInfoList = [];
    for (var item in _albumInfoList) {
      AlbumInfoModel album = AlbumInfoModel.fromDevice(item);
      albumInfoList.add(album);
    }
    if (albumInfoList.isEmpty) throw NoAlbumFoundException();
    return albumInfoList;
  }

  @override
  Future<List<PlaylistInfoModel>> getAllPlaylists() async {
    List<faq.PlaylistInfo> _playListInfoList =
        await flutterAudioQuery.getPlaylists();
    List<PlaylistInfoModel> playListInfoList = [];
    for (var item in _playListInfoList) {
      PlaylistInfoModel playlist = PlaylistInfoModel.fromDevice(item);
      playListInfoList.add(playlist);
    }
    if (playListInfoList.isEmpty) throw NoPlayListFoundException();
    return playListInfoList;
  }

  @override
  Future<List<SongInfoModel>> getAllSongs() async {
    List<faq.SongInfo> _songInfoList = await flutterAudioQuery.getSongs();
    List<SongInfoModel> songInfoList = [];
    for (var item in _songInfoList) {
      SongInfoModel songInfo = SongInfoModel.fromDevice(item);
      songInfoList.add(songInfo);
    }
    if (songInfoList.isEmpty) throw NoSongFoundException();
    return songInfoList;
  }

  @override
  Future<SongInfoModel> getSong({required String id}) async {
    faq.SongInfo? song = Utils.getItem(
        await flutterAudioQuery.getSongsById(ids: <String>[id]), id);
    if (song == null) throw NoSongFoundException();
    return SongInfoModel.fromDevice(song);
  }

  @override
  Future<List<SongInfoModel>> getSongsByAlbum({required String albumid}) async {
    List<faq.SongInfo> _songInfoList =
        await flutterAudioQuery.getSongsFromAlbum(albumId: albumid);
    List<SongInfoModel> songInfoList = [];
    for (var item in _songInfoList) {
      SongInfoModel songInfo = SongInfoModel.fromDevice(item);
      songInfoList.add(songInfo);
    }
    if (songInfoList.isEmpty) throw NoSongFoundException();
    return songInfoList;
  }

  @override
  Future<List<SongInfoModel>> getSongsByPlaylist(
      {required PlaylistInfo playlistInfo}) async {
    List<faq.SongInfo> _songInfoList = await flutterAudioQuery
        .getSongsFromPlaylist(playlist: await _getPlaylistInfo(playlistInfo));
    List<SongInfoModel> songInfoList = [];
    for (var item in _songInfoList) {
      SongInfoModel songInfo = SongInfoModel.fromDevice(item);
      songInfoList.add(songInfo);
    }
    if (songInfoList.isEmpty) throw NoSongFoundException();
    return songInfoList;
  }

  @override
  Future<void> removePlaylist({required PlaylistInfo playlistInfo}) async {
    await faq.FlutterAudioQuery.removePlaylist(
        playlist: await _getPlaylistInfo(playlistInfo));
  }

  @override
  Future<void> removeSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    (await _getPlaylistInfo(playlistInfo))
        .removeSong(song: await _getSongInfo(songInfo));
  }

  @override
  Future<List<AlbumInfoModel>> searchAllAlbums(
      {required String queryString}) async {
    List<faq.AlbumInfo> _albumInfoList =
        await flutterAudioQuery.searchAlbums(query: queryString);
    List<AlbumInfoModel> albumInfoList = [];
    for (var item in _albumInfoList) {
      AlbumInfoModel album = AlbumInfoModel.fromDevice(item);
      albumInfoList.add(album);
    }
    if (albumInfoList.isEmpty) throw NoAlbumFoundException();
    return albumInfoList;
  }

  @override
  Future<List<SongInfoModel>> searchAllSongs(
      {required String queryString}) async {
    List<faq.SongInfo> _songInfoList =
        await flutterAudioQuery.searchSongs(query: queryString);
    List<SongInfoModel> songInfoList = [];
    for (var item in _songInfoList) {
      SongInfoModel songInfo = SongInfoModel.fromDevice(item);
      songInfoList.add(songInfo);
    }
    if (songInfoList.isEmpty) throw NoSongFoundException();
    return songInfoList;
  }
}
