import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/remove_song_to_playlist.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late RemoveSongsToPlaylist usecase;
  late SongInfo song;
  late PlaylistInfo playlistInfo;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = RemoveSongsToPlaylist(repository: mockRepository);
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
    playlistInfo = PlaylistInfo(
      name: 'test',
      noOfSongs: '0',
      songList: <String>[],
    );
  });
  test('should remove song to playlist ', () async {
    // arrange
    when(mockRepository.removeSongToPlaylist(
      songInfo: song,
      playlistInfo: playlistInfo,
    )).thenAnswer((_) async => Right(playlistInfo));
    // act
    final result = await usecase(
      playlistInfo: playlistInfo,
      songInfo: song,
    );
    // assert
    expect(result, Right(playlistInfo));
    verify(mockRepository.removeSongToPlaylist(
      songInfo: song,
      playlistInfo: playlistInfo,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
