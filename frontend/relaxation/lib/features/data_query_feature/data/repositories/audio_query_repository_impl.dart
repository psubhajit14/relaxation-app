import '../../../../core/error/exception.dart';
import '../../../../core/utils.dart';
import '../datasources/audio_query_datasource.dart';
import '../../../../core/error/failures.dart';
import 'package:fpdart/src/either.dart';
import '../models/models.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/audio_query_repository.dart';

class AudioQueryRepositoryImpl implements AudioQueryRepository {
  final AudioQueryDataSource dataSource;
  AudioQueryRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, PlaylistInfo>> addSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    try {
      playlistInfo = await dataSource.addSongToPlaylist(
        playlistInfo: playlistInfo,
        songInfo: songInfo,
      );
      return Right(playlistInfo);
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, SongInfo>> getSong({required String id}) async {
    try {
      SongInfo songInfo = await dataSource.getSong(id: id);
      return Right(songInfo);
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
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
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }

  @override
  Future<Either<Failure, void>> removePlaylist(
      {required PlaylistInfo playlistInfo}) async {
    try {
      return Right(await dataSource.removePlaylist(playlistInfo: playlistInfo));
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    }
  }

  @override
  Future<Either<Failure, PlaylistInfo>> removeSongToPlaylist(
      {required PlaylistInfo playlistInfo, required SongInfo songInfo}) async {
    try {
      return (Right(await dataSource.removeSongToPlaylist(
          playlistInfo: playlistInfo, songInfo: songInfo)));
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    } on NoPlayListFoundException {
      return Left(NoPlayListFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<AlbumInfo>>> searchAllAlbums(
      {String queryString = ''}) async {
    try {
      List<AlbumInfoModel> albumInfoModelList =
          await dataSource.searchAllAlbums(queryString: queryString);
      List<AlbumInfo> albumInfoList = Utils.populateChild(albumInfoModelList);
      return Right(albumInfoList);
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    } on NoAlbumFoundException {
      return Left(NoAlbumFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<SongInfo>>> searchAllSongs(
      {String queryString = ''}) async {
    try {
      List<SongInfoModel> songInfoModelList =
          await dataSource.searchAllSongs(queryString: queryString);
      List<SongInfo> songInfoList = Utils.populateChild(songInfoModelList);
      return Right(songInfoList);
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    } on NoSongFoundException {
      return Left(NoSongFoundFailure());
    }
  }
}
