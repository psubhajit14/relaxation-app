import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_playlists.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late UGetAllPlaylists usecase;
  late List<PlaylistInfo> playlists;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = UGetAllPlaylists(repository: mockRepository);
    playlists = <PlaylistInfo>[];
    final PlaylistInfo playlistInfo = PlaylistInfo(
      name: 'test',
      noOfSongs: '0',
      songList: <String>[],
      id: '',
    );
    playlists.add(playlistInfo);
  });
  test('should fetch all playlist ', () async {
    // arrange
    when(mockRepository.getAllPlaylists())
        .thenAnswer((_) async => Right(playlists));
    // act
    final result = await usecase();
    // assert
    expect(result, Right(playlists));
    verify(mockRepository.getAllPlaylists());
    verifyNoMoreInteractions(mockRepository);
  });
}
