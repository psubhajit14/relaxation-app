import 'package:relaxation/core/error/exception.dart';
import 'package:relaxation/core/utils.dart';
import 'package:relaxation/features/data_query_feature/data/datasources/audio_query_datasource.dart';
import 'package:relaxation/core/error/failures.dart';
// ignore: implementation_imports
import 'package:fpdart/src/either.dart';
import 'package:relaxation/features/data_query_feature/data/models/models.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

class AudioQueryRepositoryImpl implements AudioQueryRepository {
  final AudioQueryDataSource dataSource;
  AudioQueryRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, void>> addSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    try {
      return Right(await dataSource.addSongToPlaylist(
        playlistInfo: playlistInfo,
        songInfo: songInfo,
      ));
    } on NoPlayListFoundException {
      return Left(NoPlayListFoundFailure());
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, PlaylistInfo>> createPlaylist(
      {required String playlistName}) async {
    try {
      PlaylistInfo playlistInfo =
          await dataSource.createPlaylist(playlistName: playlistName);
      return Right(playlistInfo);
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    }
  }

  @override
  Future<Either<Failure, AlbumInfo>> getAlbum({required String id}) async {
    try {
      AlbumInfo albumInfo = await dataSource.getAlbum(id: id);
      return Right(albumInfo);
    } on NoAlbumFoundException {
      return Left(NoAlbumFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<AlbumInfo>>> getAllAlbums() async {
    try {
      List<AlbumInfoModel> albumInfoModelList = await dataSource.getAllAlbums();
      List<AlbumInfo> albumInfoList = Utils.populateChild(albumInfoModelList);
      return Right(albumInfoList);
    } on NoAlbumFoundException {
      return Left(NoAlbumFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<PlaylistInfo>>> getAllPlaylists() async {
    try {
      List<PlaylistInfoModel> playListInfoModelList =
          await dataSource.getAllPlaylists();
      List<PlaylistInfo> playListInfoList =
          Utils.populateChild(playListInfoModelList);
      return Right(playListInfoList);
    } on NoPlayListFoundException {
      return Left(NoPlayListFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<SongInfo>>> getAllSongs() async {
    try {
      List<SongInfoModel> songInfoModelList = await dataSource.getAllSongs();
      List<SongInfo> songInfoList = Utils.populateChild(songInfoModelList);
      return Right(songInfoList);
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, SongInfo>> getSong({required String id}) async {
    try {
      SongInfo songInfo = await dataSource.getSong(id: id);
      return Right(songInfo);
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<SongInfo>>> getSongsByAlbum(
      {required String albumid}) async {
    try {
      List<SongInfoModel> songInfoModelList =
          await dataSource.getSongsByAlbum(albumid: albumid);
      List<SongInfo> songInfoList = Utils.populateChild(songInfoModelList);
      return Right(songInfoList);
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<SongInfo>>> getSongsByPlaylist(
      {required PlaylistInfo playlistInfo}) async {
    try {
      List<SongInfoModel> songInfoModelList =
          await dataSource.getSongsByPlaylist(playlistInfo: playlistInfo);
      List<SongInfo> songInfoList = Utils.populateChild(songInfoModelList);
      return Right(songInfoList);
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, void>> removePlaylist(
      {required PlaylistInfo playlistInfo}) async {
    try {
      return Right(await dataSource.removePlaylist(playlistInfo: playlistInfo));
    } on NoPlayListFoundException {
      return Left(NoPlayListFoundFailure());
    }
  }

  @override
  Future<Either<Failure, void>> removeSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    try {
      return (Right(await dataSource.removeSongToPlaylist(
          playlistInfo: playlistInfo, songInfo: songInfo)));
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    } on NoPlayListFoundException {
      return Left(NoPlayListFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<AlbumInfo>>> searchAllAlbums(
      {required String queryString}) async {
    try {
      List<AlbumInfoModel> albumInfoModelList =
          await dataSource.searchAllAlbums(queryString: queryString);
      List<AlbumInfo> albumInfoList = Utils.populateChild(albumInfoModelList);
      return Right(albumInfoList);
    } on NoAlbumFoundException {
      return Left(NoAlbumFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<SongInfo>>> searchAllSongs(
      {required String queryString}) async {
    try {
      List<SongInfoModel> songInfoModelList =
          await dataSource.searchAllSongs(queryString: queryString);
      List<SongInfo> songInfoList = Utils.populateChild(songInfoModelList);
      return Right(songInfoList);
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }
}
