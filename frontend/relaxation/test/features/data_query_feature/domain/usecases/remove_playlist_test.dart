import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/remove_playlist.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late URemovePlaylist usecase;
  late PlaylistInfo playlistInfo;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = URemovePlaylist(repository: mockRepository);
    playlistInfo = PlaylistInfo(
      name: 'test',
      noOfSongs: '0',
      songList: <String>[],
      id: '',
    );
  });
  test('should remove playlist ', () async {
    // arrange
    when(mockRepository.removePlaylist(playlistInfo: playlistInfo))
        .thenAnswer((_) async => Right(Void));
    // act
    final result = await usecase(playlistInfo: playlistInfo);
    // assert
    expect(result, Right(Void));
    verify(mockRepository.removePlaylist(playlistInfo: playlistInfo));
    verifyNoMoreInteractions(mockRepository);
  });
}
