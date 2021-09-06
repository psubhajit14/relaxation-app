import 'dart:ffi';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';

import '../usecase_mocks.mocks.dart';

void main() {
  late MockUGetSong getSong;
  late MockUGetAllSongs getAllSongs;
  late MockUGetSongsByAlbum getSongsByAlbum;
  late MockUAddSongsToPlaylist addSongsToPlaylist;
  late MockURemoveSongsToPlaylist removeSongsToPlaylist;
  late MockUGetSongsByPlaylist getSongsByPlaylist;
  late MockUSearchAllSongs searchAllSongs;
  late PlaylistInfo playlist;
  late SongInfo song;
  late List<SongInfo> songList = [];
  late SongInfoBloc bloc;
  setUp(() {
    getSong = MockUGetSong();
    getAllSongs = MockUGetAllSongs();
    getSongsByAlbum = MockUGetSongsByAlbum();
    getSongsByPlaylist = MockUGetSongsByPlaylist();
    addSongsToPlaylist = MockUAddSongsToPlaylist();
    removeSongsToPlaylist = MockURemoveSongsToPlaylist();
    searchAllSongs = MockUSearchAllSongs();
    bloc = SongInfoBloc(getSong, getSongsByAlbum, getSongsByPlaylist,
        getAllSongs, addSongsToPlaylist, removeSongsToPlaylist, searchAllSongs);
    song = SongInfo(
        id: "id",
        path: "path",
        title: "title",
        duration: "duration",
        artist: "artist",
        album: "album",
        fileSize: "fileSize",
        artworkPath: "artworkPath");
    songList.add(song);

    playlist = PlaylistInfo(name: "test1", noOfSongs: '5', songList: ["sd"]);
  });
  group('Song Bloc :', () {
    blocTest<SongInfoBloc, SongInfoState>(
      'should be in [] while initialized',
      build: () => bloc,
      act: (_bloc) => _bloc,
      expect: () => [],
    );
    group('get Song :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at getSong',
        build: () {
          when(getSong(id: song.id))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSong(song.id)),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded([song])] at getSong',
        build: () {
          when(getSong(id: song.id)).thenAnswer((_) async => Right(song));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSong(song.id)),
        expect: () => _expectSongList([song]),
      );
    });
    group('get All Song :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at getAllSong',
        build: () {
          when(getAllSongs())
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllSongs()),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded(songList)] at getAllSong',
        build: () {
          when(getAllSongs()).thenAnswer((_) async => Right(songList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllSongs()),
        expect: () => _expectSongList(songList),
      );
    });
    group('get Songs By Album :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at getSongsByAlbum',
        build: () {
          when(getSongsByAlbum(albumid: "5"))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSongByAlbum("5")),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded(songList)] at getSongsByAlbum',
        build: () {
          when(getSongsByAlbum(albumid: "5"))
              .thenAnswer((_) async => Right(songList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSongByAlbum("5")),
        expect: () => _expectSongList(songList),
      );
    });
    group('get Song By Playlist :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at getSongsByPlaylist',
        build: () {
          when(getSongsByPlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSongsByPlaylist(playlist)),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded(songList)] at getSongsByPlaylist',
        build: () {
          when(getSongsByPlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Right(songList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetSongsByPlaylist(playlist)),
        expect: () => _expectSongList(songList),
      );
    });
    group('add Song to Playlist :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at addSongsToPlaylist',
        build: () {
          when(addSongsToPlaylist(playlistInfo: playlist, songInfo: song))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EAddSongToPlaylist(song, playlist)),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded([song])] at addSongsToPlaylist',
        build: () {
          when(getSongsByPlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Right(songList));
          when(addSongsToPlaylist(playlistInfo: playlist, songInfo: song))
              .thenAnswer((_) async => Right(Void));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EAddSongToPlaylist(song, playlist)),
        expect: () => _expectSongList(songList),
      );
    });
    group('remove Song to Playlist:', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at removeSongsToPlaylist',
        build: () {
          when(removeSongsToPlaylist(playlistInfo: playlist, songInfo: song))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ERemoveSongToPlaylist(song, playlist)),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded([song])] at removeSongsToPlaylist',
        build: () {
          when(getSongsByPlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Right(songList));
          when(removeSongsToPlaylist(playlistInfo: playlist, songInfo: song))
              .thenAnswer((_) async => Right(Void));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ERemoveSongToPlaylist(song, playlist)),
        expect: () => _expectSongList(songList),
      );
    });
    group('search All Song :', () {
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongInfoLoading,SongError] at searchAllSongs',
        build: () {
          when(searchAllSongs(query: "query"))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ESearchAllSongs("query")),
        expect: () => _expectError,
      );
      blocTest<SongInfoBloc, SongInfoState>(
        'Should emit [SongInfoInitial,SongLoading,SongLoaded([song])] at searchAllSongs',
        build: () {
          when(searchAllSongs(query: "query"))
              .thenAnswer((_) async => Right(songList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ESearchAllSongs("query")),
        expect: () => _expectSongList(songList),
      );
    });
  });
}

List<SongInfoState> _expectSongList(List<SongInfo> songList) {
  return [
    SongInfoInitial(),
    SongLoading(),
    SongLoaded(songList),
  ];
}

List<SongInfoState> get _expectError {
  return [
    SongInfoInitial(),
    SongLoading(),
    SongError(K_NO_DATA_FOUND),
  ];
}
