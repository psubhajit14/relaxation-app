import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/create_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/remove_playlist.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late CreatePlaylist usecase;
  late PlaylistInfo playlistInfo;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = CreatePlaylist(repository: mockRepository);
    playlistInfo = PlaylistInfo(
      name: 'test',
      noOfSongs: '0',
      songList: <SongInfo>[],
    );
  });
  test('should create playlist ', () async {
    // arrange
    String name = "test";
    when(mockRepository.createPlaylist(playlistName: name))
        .thenAnswer((_) async => Right(playlistInfo));
    // act
    final result = await usecase(name: name);
    // assert
    expect(result, Right(playlistInfo));
    verify(mockRepository.createPlaylist(playlistName: name));
    verifyNoMoreInteractions(mockRepository);
  });
}
