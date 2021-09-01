import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_playlist.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late GetSongsByPlaylist usecase;
  late List<SongInfo> songs;
  late PlaylistInfo playlistInfo;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = GetSongsByPlaylist(repository: mockRepository);
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

    playlistInfo = PlaylistInfo(
      name: 'test',
      noOfSongs: '0',
      songList: <String>[],
    );
  });
  test('should fetch songs from playlist ', () async {
    // arrange
    when(mockRepository.getSongsByPlaylist(
      playlistInfo: playlistInfo,
    )).thenAnswer((_) async => Right(songs));
    // act
    final result = await usecase(
      playlistInfo: playlistInfo,
    );
    // assert
    expect(result, Right(songs));
    verify(mockRepository.getSongsByPlaylist(
      playlistInfo: playlistInfo,
    ));
    verifyNoMoreInteractions(mockRepository);
  });
}
