import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_albums.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late UGetAllAlbums usecase;
  late List<AlbumInfo> albums;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = UGetAllAlbums(repository: mockRepository);
    albums = <AlbumInfo>[];
    final AlbumInfo albumInfo = AlbumInfo(
        id: '1', title: "test Album", albumArt: "C:/abc.jpg", noOfSongs: "3");
    albums.add(albumInfo);
  });
  test('should fetch all albums ', () async {
    // arrange
    when(mockRepository.getAllAlbums()).thenAnswer((_) async => Right(albums));
    // act
    final result = await usecase();
    // assert
    expect(result, Right(albums));
    verify(mockRepository.getAllAlbums());
    verifyNoMoreInteractions(mockRepository);
  });
}
