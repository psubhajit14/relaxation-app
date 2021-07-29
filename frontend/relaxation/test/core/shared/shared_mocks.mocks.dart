// Mocks generated by Mockito 5.0.11 from annotations
// in relaxation/test/core/shared/shared_mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:fpdart/src/either.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:relaxation/core/error/failures.dart' as _i5;
import 'package:relaxation/features/data_query_feature/domain/entities/album_info.dart'
    as _i7;
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart'
    as _i8;
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart'
    as _i6;
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [AudioQueryRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAudioQueryRepository extends _i1.Mock
    implements _i3.AudioQueryRepository {
  MockAudioQueryRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.SongInfo>> getSong({String? id}) =>
      (super.noSuchMethod(Invocation.method(#getSong, [], {#id: id}),
              returnValue: Future<_i2.Either<_i5.Failure, _i6.SongInfo>>.value(
                  _FakeEither<_i5.Failure, _i6.SongInfo>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i6.SongInfo>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.AlbumInfo>> getAlbum({String? id}) =>
      (super.noSuchMethod(Invocation.method(#getAlbum, [], {#id: id}),
              returnValue: Future<_i2.Either<_i5.Failure, _i7.AlbumInfo>>.value(
                  _FakeEither<_i5.Failure, _i7.AlbumInfo>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i7.AlbumInfo>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>> getAllSongs() =>
      (super.noSuchMethod(Invocation.method(#getAllSongs, []),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>.value(
                      _FakeEither<_i5.Failure, List<_i6.SongInfo>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>> getSongsByAlbum(
          {String? albumid}) =>
      (super.noSuchMethod(
              Invocation.method(#getSongsByAlbum, [], {#albumid: albumid}),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>.value(
                      _FakeEither<_i5.Failure, List<_i6.SongInfo>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>> getSongsByPlaylist(
          {_i8.PlaylistInfo? playlistInfo}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getSongsByPlaylist, [], {#playlistInfo: playlistInfo}),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>.value(
                      _FakeEither<_i5.Failure, List<_i6.SongInfo>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>> searchAllSongs(
          {String? queryString}) =>
      (super.noSuchMethod(
          Invocation.method(#searchAllSongs, [], {#queryString: queryString}),
          returnValue:
              Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>.value(
                  _FakeEither<_i5.Failure, List<_i6.SongInfo>>())) as _i4
          .Future<_i2.Either<_i5.Failure, List<_i6.SongInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>> getAllAlbums() =>
      (super.noSuchMethod(Invocation.method(#getAllAlbums, []),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>>.value(
                      _FakeEither<_i5.Failure, List<_i7.AlbumInfo>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>> searchAllAlbums(
          {String? queryString}) =>
      (super.noSuchMethod(
          Invocation.method(#searchAllAlbums, [], {#queryString: queryString}),
          returnValue:
              Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>>.value(
                  _FakeEither<_i5.Failure, List<_i7.AlbumInfo>>())) as _i4
          .Future<_i2.Either<_i5.Failure, List<_i7.AlbumInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.PlaylistInfo>>>
      getAllPlaylists() => (super.noSuchMethod(
              Invocation.method(#getAllPlaylists, []),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i8.PlaylistInfo>>>.value(
                      _FakeEither<_i5.Failure, List<_i8.PlaylistInfo>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i8.PlaylistInfo>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>> addSongToPlaylist(
          {_i8.PlaylistInfo? playlistInfo, _i6.SongInfo? songInfo}) =>
      (super.noSuchMethod(
          Invocation.method(#addSongToPlaylist, [],
              {#playlistInfo: playlistInfo, #songInfo: songInfo}),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>.value(
              _FakeEither<_i5.Failure, _i8.PlaylistInfo>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>> removeSongToPlaylist(
          {_i8.PlaylistInfo? playlistInfo, _i6.SongInfo? songInfo}) =>
      (super.noSuchMethod(
          Invocation.method(#removeSongToPlaylist, [],
              {#playlistInfo: playlistInfo, #songInfo: songInfo}),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>.value(
              _FakeEither<_i5.Failure, _i8.PlaylistInfo>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>> createPlaylist(
          {String? playlistName}) =>
      (super.noSuchMethod(
          Invocation.method(#createPlaylist, [], {#playlistName: playlistName}),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>.value(
              _FakeEither<_i5.Failure, _i8.PlaylistInfo>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>> removePlaylist(
          {_i8.PlaylistInfo? playlistInfo}) =>
      (super.noSuchMethod(
          Invocation.method(#removePlaylist, [], {#playlistInfo: playlistInfo}),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>.value(
              _FakeEither<_i5.Failure, _i8.PlaylistInfo>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.PlaylistInfo>>);
}