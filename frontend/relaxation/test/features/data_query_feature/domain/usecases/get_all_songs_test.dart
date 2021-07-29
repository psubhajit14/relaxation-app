import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_songs.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late GetAllSongs usecase;
  late List<SongInfo> songs;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = GetAllSongs(repository: mockRepository);
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
  test('should fetch all songs ', () async {
    // arrange
    when(mockRepository.getAllSongs()).thenAnswer((_) async => Right(songs));
    // act
    final result = await usecase();
    // assert
    expect(result, Right(songs));
    verify(mockRepository.getAllSongs());
    verifyNoMoreInteractions(mockRepository);
  });
}
