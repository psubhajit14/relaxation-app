import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_songs.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/search_all_albums.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/search_all_songs.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late SearchAllAlbums usecase;
  late List<AlbumInfo> albums;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = SearchAllAlbums(repository: mockRepository);
    albums = <AlbumInfo>[];
    final AlbumInfo albumInfo = AlbumInfo(
        id: '1', title: "test Album", albumArt: "C:/abc.jpg", noOfSongs: "3");
    albums.add(albumInfo);
  });
  test('should search and fetch all album ', () async {
    String query = "s";
    // arrange
    when(mockRepository.searchAllAlbums(queryString: query))
        .thenAnswer((_) async => Right(albums));
    // act
    final result = await usecase(query: query);
    // assert
    expect(result, Right(albums));
    verify(mockRepository.searchAllAlbums(queryString: query));
    verifyNoMoreInteractions(mockRepository);
  });
}
