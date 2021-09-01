import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/core/error/exception.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/core/utils.dart';
import 'package:relaxation/features/data_query_feature/data/models/models.dart';
import 'package:relaxation/features/data_query_feature/data/repositories/audio_query_repository_impl.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';

import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryDataSource mockAudioQueryDataSource;
  late AudioQueryRepositoryImpl repository;
  late PlaylistInfo playlistInfo;
  final List<PlaylistInfo> playListInfoList = [];
  late PlaylistInfoModel playlistInfoModel;
  final List<PlaylistInfoModel> playListInfoModelList = [];
  late SongInfo songInfo;
  late SongInfoModel songInfoModel;
  late AlbumInfo albumInfo;
  late AlbumInfoModel albumInfoModel;
  final String queryString = "qString";
  final List<AlbumInfo> albuminfoList = [];
  final List<SongInfo> songInfoList = [];
  final List<AlbumInfoModel> albumInfoModelList = [];
  final List<SongInfoModel> songInfoModelList = [];
  setUp(() {
    mockAudioQueryDataSource = MockAudioQueryDataSource();
    repository = AudioQueryRepositoryImpl(
      dataSource: mockAudioQueryDataSource,
    );
    String playlistName = "playlistName";
    String noOfSongs = "5";
    List<String> songList = <String>[];
    playlistInfoModel = PlaylistInfoModel(
        name: playlistName, noOfSongs: noOfSongs, songList: songList);
    playListInfoModelList.add(playlistInfoModel);
    playlistInfo = playlistInfoModel;
    playListInfoList.add(playlistInfo);
    String songId = "6";
    String path = "file://song.mp3";
    String songTitle = "songTitle";
    String duration = "4m";
    String artist = "artist";
    String album = "7";
    String fileSize = "2mb";
    String artworkPath = "file://artwork.png";
    songInfoModel = SongInfoModel(
        id: songId,
        path: path,
        title: songTitle,
        duration: duration,
        artist: artist,
        album: album,
        fileSize: fileSize,
        artworkPath: artworkPath);
    songInfoModelList.add(songInfoModel);
    songInfo = songInfoModel;
    songInfoList.add(songInfo);
    String albumTitle = "albumTittle";
    String albumArt = "file://albumArt.png";
    albumInfoModel = AlbumInfoModel(
        id: album, title: albumTitle, noOfSongs: noOfSongs, albumArt: albumArt);
    albumInfoModelList.add(albumInfoModel);
    albumInfo = albumInfoModel;
    albuminfoList.add(albumInfo);
  });
  group('addSongToPlaylist :', () {
    test(
      'should add songs to playlist without error',
      () async {
        // arrange
        when(mockAudioQueryDataSource.addSongToPlaylist(
                playlistInfo: playlistInfo, songInfo: songInfo))
            .thenAnswer((_) async => playlistInfoModel);
        // act
        final result = await repository.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo);
        // assert
        verify(mockAudioQueryDataSource.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo));
        expect(result, equals(Right(playlistInfo)));
      },
    );
    test(
      'should show noSongFoundfaliure on noSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.addSongToPlaylist(
                playlistInfo: playlistInfo, songInfo: songInfo))
            .thenThrow(NoSongFoundException());
        // act
        final result = await repository.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo);
        // assert
        verify(mockAudioQueryDataSource.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
    test(
      'should show noPlaylistFoundfaliure on noPlaylistFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.addSongToPlaylist(
                playlistInfo: playlistInfo, songInfo: songInfo))
            .thenThrow(NoPlayListFoundException());
        // act
        final result = await repository.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo);
        // assert
        verify(mockAudioQueryDataSource.addSongToPlaylist(
            playlistInfo: playlistInfo, songInfo: songInfo));
        expect(result, equals(Left(NoPlayListFoundFailure())));
      },
    );
  });
  group('createPlaylist :', () {
    test(
      'should create playlist',
      () async {
        // arrange
        when(mockAudioQueryDataSource.createPlaylist(
                playlistName: playlistInfo.name))
            .thenAnswer((_) async => playlistInfoModel);
        // act
        final result =
            await repository.createPlaylist(playlistName: playlistInfo.name);
        // assert
        verify(mockAudioQueryDataSource.createPlaylist(
            playlistName: playlistInfo.name));
        expect(result, equals(Right(playlistInfo)));
      },
    );
    test(
      'should show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.createPlaylist(
                playlistName: playlistInfo.name))
            .thenThrow(NoDataFoundException());
        // act
        final result =
            await repository.createPlaylist(playlistName: playlistInfo.name);
        // assert
        verify(mockAudioQueryDataSource.createPlaylist(
            playlistName: playlistInfo.name));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
  });
  group('getAlbum :', () {
    test(
      'should get album',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAlbum(id: albumInfo.id))
            .thenAnswer((_) async => albumInfoModel);
        // act
        final result = await repository.getAlbum(id: albumInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getAlbum(id: albumInfo.id));
        expect(result, equals(Right(albumInfo)));
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAlbum(id: albumInfo.id))
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getAlbum(id: albumInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getAlbum(id: albumInfo.id));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoAlbumFoundFailure on NoAlbumFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAlbum(id: albumInfo.id))
            .thenThrow(NoAlbumFoundException());
        // act
        final result = await repository.getAlbum(id: albumInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getAlbum(id: albumInfo.id));
        expect(result, equals(Left(NoAlbumFoundFailure())));
      },
    );
  });
  group('searchAllSongs :', () {
    test(
      'should search Songs',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllSongs(queryString: queryString))
            .thenAnswer((_) async => songInfoModelList);

        // act
        final result =
            await repository.searchAllSongs(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllSongs(queryString: queryString));
        expect(true, result.isRight());
        // pass only it has any value
        expect(result.getRight().getOrElse(() => <SongInfo>[]), songInfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllSongs(queryString: queryString))
            .thenThrow(NoDataFoundException());
        // act
        final result =
            await repository.searchAllSongs(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllSongs(queryString: queryString));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoAlbumFoundFailure on NoAlbumFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllSongs(queryString: queryString))
            .thenThrow(NoSongFoundException());
        // act
        final result =
            await repository.searchAllSongs(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllSongs(queryString: queryString));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
  group('searchAllAlbums :', () {
    test(
      'should search Albums',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllAlbums(queryString: queryString))
            .thenAnswer((_) async => albumInfoModelList);

        // act
        final result =
            await repository.searchAllAlbums(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllAlbums(queryString: queryString));
        listExists(result, albuminfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllAlbums(queryString: queryString))
            .thenThrow(NoDataFoundException());
        // act
        final result =
            await repository.searchAllAlbums(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllAlbums(queryString: queryString));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoAlbumFoundFailure on NoAlbumFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.searchAllAlbums(queryString: queryString))
            .thenThrow(NoAlbumFoundException());
        // act
        final result =
            await repository.searchAllAlbums(queryString: queryString);
        // assert
        verify(
            mockAudioQueryDataSource.searchAllAlbums(queryString: queryString));
        expect(result, equals(Left(NoAlbumFoundFailure())));
      },
    );
  });
  group('getAllAlbums :', () {
    test(
      'should get Albums',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllAlbums())
            .thenAnswer((_) async => albumInfoModelList);

        // act
        final result = await repository.getAllAlbums();
        // assert
        verify(mockAudioQueryDataSource.getAllAlbums());
        listExists(result, albuminfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllAlbums())
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getAllAlbums();
        // assert
        verify(mockAudioQueryDataSource.getAllAlbums());
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoAlbumFoundFailure on NoAlbumFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllAlbums())
            .thenThrow(NoAlbumFoundException());
        // act
        final result = await repository.getAllAlbums();
        // assert
        verify(mockAudioQueryDataSource.getAllAlbums());
        expect(result, equals(Left(NoAlbumFoundFailure())));
      },
    );
  });
  group('getAllPlaylists :', () {
    test(
      'should get PlayList',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllPlaylists())
            .thenAnswer((_) async => playListInfoModelList);

        // act
        final result = await repository.getAllPlaylists();
        // assert
        verify(mockAudioQueryDataSource.getAllPlaylists());
        listExists(result, playListInfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllPlaylists())
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getAllPlaylists();
        // assert
        verify(mockAudioQueryDataSource.getAllPlaylists());
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoPlayListFoundFailure on NoPlayListFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllPlaylists())
            .thenThrow(NoPlayListFoundException());
        // act
        final result = await repository.getAllPlaylists();
        // assert
        verify(mockAudioQueryDataSource.getAllPlaylists());
        expect(result, equals(Left(NoPlayListFoundFailure())));
      },
    );
  });
  group('getAllSongs :', () {
    test(
      'should get Songs',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllSongs())
            .thenAnswer((_) async => songInfoModelList);

        // act
        final result = await repository.getAllSongs();
        // assert
        verify(mockAudioQueryDataSource.getAllSongs());
        listExists(result, songInfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllSongs())
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getAllSongs();
        // assert
        verify(mockAudioQueryDataSource.getAllSongs());
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoSongFoundFailure on NoSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getAllSongs())
            .thenThrow(NoSongFoundException());
        // act
        final result = await repository.getAllSongs();
        // assert
        verify(mockAudioQueryDataSource.getAllSongs());
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
  group('getSongsByAlbum :', () {
    test(
      'should get Songs',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByAlbum(
                albumid: albumInfoModel.id))
            .thenAnswer((_) async => songInfoModelList);
        // act
        final result =
            await repository.getSongsByAlbum(albumid: albumInfoModel.id);
        // assert
        verify(mockAudioQueryDataSource.getSongsByAlbum(
            albumid: albumInfoModel.id));
        listExists(result, songInfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByAlbum(
                albumid: albumInfoModel.id))
            .thenThrow(NoDataFoundException());
        // act
        final result =
            await repository.getSongsByAlbum(albumid: albumInfoModel.id);
        // assert
        verify(mockAudioQueryDataSource.getSongsByAlbum(
            albumid: albumInfoModel.id));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoSongFoundFailure on NoSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByAlbum(
                albumid: albumInfoModel.id))
            .thenThrow(NoSongFoundException());
        // act
        final result =
            await repository.getSongsByAlbum(albumid: albumInfoModel.id);
        // assert
        verify(mockAudioQueryDataSource.getSongsByAlbum(
            albumid: albumInfoModel.id));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
  group('getSongsByPlaylist :', () {
    test(
      'should get Songs',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByPlaylist(
                playlistInfo: playlistInfoModel))
            .thenAnswer((_) async => songInfoModelList);
        // act
        final result = await repository.getSongsByPlaylist(
            playlistInfo: playlistInfoModel);
        // assert
        verify(mockAudioQueryDataSource.getSongsByPlaylist(
            playlistInfo: playlistInfoModel));
        listExists(result, songInfoList);
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByPlaylist(
                playlistInfo: playlistInfoModel))
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getSongsByPlaylist(
            playlistInfo: playlistInfoModel);
        // assert
        verify(mockAudioQueryDataSource.getSongsByPlaylist(
            playlistInfo: playlistInfoModel));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoSongFoundFailure on NoSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSongsByPlaylist(
                playlistInfo: playlistInfoModel))
            .thenThrow(NoSongFoundException());
        // act
        final result = await repository.getSongsByPlaylist(
            playlistInfo: playlistInfoModel);
        // assert
        verify(mockAudioQueryDataSource.getSongsByPlaylist(
            playlistInfo: playlistInfoModel));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
  group('removePlaylist :', () {
    test(
      'should remove Playlist',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removePlaylist(
                playlistInfo: playlistInfo))
            .thenAnswer((_) async => Void);
        // act
        final result =
            await repository.removePlaylist(playlistInfo: playlistInfo);
        // assert
        verify(mockAudioQueryDataSource.removePlaylist(
            playlistInfo: playlistInfo));
        expect(result, Right(Void));
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removePlaylist(
                playlistInfo: playlistInfoModel))
            .thenThrow(NoDataFoundException());
        // act
        final result =
            await repository.removePlaylist(playlistInfo: playlistInfoModel);
        // assert
        verify(mockAudioQueryDataSource.removePlaylist(
            playlistInfo: playlistInfoModel));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
  });
  group('removeSongToPlaylist :', () {
    test(
      'should remove song from Playlist',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removeSongToPlaylist(
                playlistInfo: playlistInfoModel, songInfo: songInfoModel))
            .thenAnswer((_) async => playlistInfoModel);
        // act
        final result = await repository.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel);
        // assert
        verify(mockAudioQueryDataSource.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel));
        expect(result, Right(playlistInfo));
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removeSongToPlaylist(
                playlistInfo: playlistInfoModel, songInfo: songInfoModel))
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel);
        // assert
        verify(mockAudioQueryDataSource.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoPlayListFoundFailure on NoPlayListFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removeSongToPlaylist(
                playlistInfo: playlistInfoModel, songInfo: songInfoModel))
            .thenThrow(NoPlayListFoundException());
        // act
        final result = await repository.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel);
        // assert
        verify(mockAudioQueryDataSource.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel));
        expect(result, equals(Left(NoPlayListFoundFailure())));
      },
    );
    test(
      'show NoSongFoundFailure on NoSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.removeSongToPlaylist(
                playlistInfo: playlistInfoModel, songInfo: songInfoModel))
            .thenThrow(NoSongFoundException());
        // act
        final result = await repository.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel);
        // assert
        verify(mockAudioQueryDataSource.removeSongToPlaylist(
            playlistInfo: playlistInfoModel, songInfo: songInfoModel));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
  group('getSong :', () {
    test(
      'should get Songs',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSong(id: songInfo.id))
            .thenAnswer((_) async => songInfoModel);

        // act
        final result = await repository.getSong(id: songInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getSong(id: songInfo.id));
        expect(result, Right(songInfo));
      },
    );
    test(
      'show NoDataFoundFailure on NoDataFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSong(id: songInfo.id))
            .thenThrow(NoDataFoundException());
        // act
        final result = await repository.getSong(id: songInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getSong(id: songInfo.id));
        expect(result, equals(Left(NoDataFoundFailure())));
      },
    );
    test(
      'show NoSongFoundFailure on NoSongFoundException',
      () async {
        // arrange
        when(mockAudioQueryDataSource.getSong(id: songInfo.id))
            .thenThrow(NoSongFoundException());
        // act
        final result = await repository.getSong(id: songInfo.id);
        // assert
        verify(mockAudioQueryDataSource.getSong(id: songInfo.id));
        expect(result, equals(Left(NoSongFoundFailure())));
      },
    );
  });
}

void listExists<T>(Either<Failure, List<T>> result, List<T> list) {
  expect(true, result.isRight());
  // pass only it has any value
  expect(result.getRight().getOrElse(() => <T>[]), list);
}
