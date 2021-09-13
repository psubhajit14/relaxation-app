import 'dart:ffi';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/playlist/playlist_info_bloc.dart';

import '../usecase_mocks.mocks.dart';

void main() {
  late MockUCreatePlaylist createPlaylist;
  late MockURemovePlaylist removePlaylist;
  late MockUGetAllPlaylists getAllPlaylists;
  late PlaylistInfo playlist;
  late List<PlaylistInfo> playlistList = [];
  late PlaylistInfoBloc bloc;
  setUp(() {
    createPlaylist = MockUCreatePlaylist();
    removePlaylist = MockURemovePlaylist();
    getAllPlaylists = MockUGetAllPlaylists();
    bloc = PlaylistInfoBloc(createPlaylist, removePlaylist, getAllPlaylists);
    playlist = PlaylistInfo(
      name: "test1",
      noOfSongs: '5',
      songList: ["sd"],
      id: '',
    );
    playlistList.add(playlist);
  });
  group('PlayList Bloc :', () {
    blocTest<PlaylistInfoBloc, PlaylistInfoState>(
      'should be in [] while initialized',
      build: () => bloc,
      act: (_bloc) => _bloc,
      expect: () => [],
    );
    group('create Playlist :', () {
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistError] at create state',
        build: () {
          when(createPlaylist(name: "test"))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ECreatePlaylist("test")),
        expect: () => _expectError,
      );
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistLoaded(playlistList)] at create Playlist',
        build: () {
          when(getAllPlaylists()).thenAnswer((_) async => Right(playlistList));
          when(createPlaylist(name: "test1"))
              .thenAnswer((_) async => Right(playlist));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ECreatePlaylist("test1")),
        expect: () => [
          PlaylistInfoInitial(),
          PlaylistLoading(),
          PlaylistLoaded(playlistList)
        ],
      );
    });
    group('Remove playlist :', () {
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistError] at remove Playlist',
        build: () {
          when(removePlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ERemovePlaylist(playlist)),
        expect: () => _expectError,
      );
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistLoaded(playlist)]',
        build: () {
          when(getAllPlaylists()).thenAnswer((_) async => Right(playlistList));
          when(removePlaylist(playlistInfo: playlist))
              .thenAnswer((_) async => Right(Void));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllPlaylists()),
        expect: () => [
          PlaylistInfoInitial(),
          PlaylistLoading(),
          PlaylistLoaded(playlistList)
        ],
      );
    });
    group('Get All playlist :', () {
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistError] at Get All Playlist',
        build: () {
          when(getAllPlaylists())
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllPlaylists()),
        expect: () => _expectError,
      );
      blocTest<PlaylistInfoBloc, PlaylistInfoState>(
        'Should emit [PlaylistInfoInitial,PlaylistLoading,PlaylistLoaded(playlist)]',
        build: () {
          when(getAllPlaylists()).thenAnswer((_) async => Right(playlistList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllPlaylists()),
        expect: () => [
          PlaylistInfoInitial(),
          PlaylistLoading(),
          PlaylistLoaded(playlistList)
        ],
      );
    });
  });
}

List<PlaylistInfoState> get _expectError {
  return [
    PlaylistInfoInitial(),
    PlaylistLoading(),
    PlaylistError(K_NO_DATA_FOUND),
  ];
}
