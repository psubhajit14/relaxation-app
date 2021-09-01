import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/add_song_to_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_album.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_playlist.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late GetSongsByAlbum usecase;
  late List<SongInfo> songs;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = GetSongsByAlbum(repository: mockRepository);
    final song = SongInfo(
      id: '1',
      path: 'C://abc.mp3',
      title: 'test',
      duration: "2m",
      artist: 'test artist',
      album: '2',
      fileSize: '5mb',
      artworkPath: 'C://abc.jpg',
    );
    songs = <SongInfo>[];
    songs.add(song);
  });
  test('should fetch songs from album ', () async {
    String id = "1";
    // arrange
    when(mockRepository.getSongsByAlbum(albumid: id))
        .thenAnswer((_) async => Right(songs));
    // act
    final result = await usecase(
      albumid: id,
    );
    // assert
    expect(result, Right(songs));
    verify(mockRepository.getSongsByAlbum(
      albumid: id,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
