import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_song.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late UGetSong usecase;
  late SongInfo song;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = UGetSong(repository: mockRepository);
    song = SongInfo(
      id: '1',
      path: 'C://abc.mp3',
      title: 'test',
      duration: "2m",
      artist: 'test artist',
      album: '2',
      fileSize: '5mb',
      artworkPath: 'C://abc.jpg',
    );
  });
  test('should fetch song by id ', () async {
    // arrange
    String id = "1";
    when(mockRepository.getSong(id: id)).thenAnswer((_) async => Right(song));
    // act
    final result = await usecase(id: id);
    // assert
    expect(result, Right(song));
    verify(mockRepository.getSong(id: id));
    verifyNoMoreInteractions(mockRepository);
  });
}
