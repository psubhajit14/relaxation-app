import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/search_all_songs.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late SearchAllSongs usecase;
  late List<SongInfo> songs;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = SearchAllSongs(repository: mockRepository);
    songs = <SongInfo>[];
    final SongInfo songInfo = SongInfo(
      id: '1',
      path: 'C://abc.mp3',
      title: 'test',
      duration: "2m",
      artist: 'test artist',
      album: '2',
      fileSize: '5mb',
      artworkPath: 'C://abc.jpg',
    );
    songs.add(songInfo);
  });
  test('should search and fetch all songs ', () async {
    String query = "s";
    // arrange
    when(mockRepository.searchAllSongs(queryString: query))
        .thenAnswer((_) async => Right(songs));
    // act
    final result = await usecase(query: query);
    // assert
    expect(result, Right(songs));
    verify(mockRepository.searchAllSongs(queryString: query));
    verifyNoMoreInteractions(mockRepository);
  });
}
