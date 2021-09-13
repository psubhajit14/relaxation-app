import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/core/error/failures.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/album_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/album/album_info_bloc.dart';

import '../usecase_mocks.mocks.dart';

void main() {
  late MockUGetAlbum getAlbum;
  late MockUGetAllAlbums getAllAlbums;
  late MockUSearchAllAlbums searchAllAlbums;
  late AlbumInfo album;
  late List<AlbumInfo> albumList = [];
  late AlbumInfoBloc bloc;
  setUp(() {
    getAlbum = MockUGetAlbum();
    getAllAlbums = MockUGetAllAlbums();
    searchAllAlbums = MockUSearchAllAlbums();
    bloc = AlbumInfoBloc(getAlbum, getAllAlbums, searchAllAlbums);
    album = AlbumInfo(
      id: "id",
      title: "title",
      noOfSongs: '5',
      albumArt: 'file://3.png',
    );
    albumList.add(album);
  });
  group('Album Bloc :', () {
    blocTest<AlbumInfoBloc, AlbumInfoState>(
      'should be in [] while initialized',
      build: () => bloc,
      act: (_bloc) => _bloc,
      expect: () => [],
    );
    group('get Album :', () {
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumError] at getAlbum',
        build: () {
          when(getAlbum(id: album.id))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAlbum(album.id)),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumError(K_NO_DATA_FOUND),
        ],
      );
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumLoaded(album)] at getAlbum',
        build: () {
          when(getAlbum(id: album.id)).thenAnswer((_) async => Right(album));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAlbum(album.id)),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumLoaded([album]),
        ],
      );
    });
    group('get All Album :', () {
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumError] at getAllAlbum',
        build: () {
          when(getAllAlbums())
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllAlbums()),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumError(K_NO_DATA_FOUND),
        ],
      );
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumLoaded(albumlist)] at getAllAlbum',
        build: () {
          when(getAllAlbums()).thenAnswer((_) async => Right(albumList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(EGetAllAlbums()),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumLoaded(albumList),
        ],
      );
    });
    group('search All Album :', () {
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumError] at searchAllAlbum',
        build: () {
          when(searchAllAlbums(query: "id"))
              .thenAnswer((_) async => Left(NoDataFoundFailure()));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ESearchAllAlbums("id")),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumError(K_NO_DATA_FOUND),
        ],
      );
      blocTest<AlbumInfoBloc, AlbumInfoState>(
        'should emit [AlbumInfoInitial, AlbumLoading, AlbumLoaded(albumlist)] at searchAllAlbum',
        build: () {
          when(searchAllAlbums(query: "id"))
              .thenAnswer((_) async => Right(albumList));
          return bloc;
        },
        act: (_bloc) => _bloc.add(ESearchAllAlbums("id")),
        expect: () => [
          AlbumInfoInitial(),
          AlbumLoading(),
          AlbumLoaded(albumList),
        ],
      );
    });
  });
}
