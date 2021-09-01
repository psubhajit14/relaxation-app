import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_album.dart';
//! important
import '../../../../core/shared/shared_mocks.mocks.dart';

void main() {
  late MockAudioQueryRepository mockRepository;
  late GetAlbum usecase;
  late AlbumInfo album;
  setUp(() {
    mockRepository = MockAudioQueryRepository();
    usecase = GetAlbum(repository: mockRepository);
    album = AlbumInfo(
        id: '1', title: "test Album", albumArt: "C:/abc.jpg", noOfSongs: "3");
  });
  test('should fetch album by id ', () async {
    // arrange
    String id = "1";
    when(mockRepository.getAlbum(id: id)).thenAnswer((_) async => Right(album));
    // act
    final result = await usecase(id: id);
    // assert
    expect(result, Right(album));
    verify(mockRepository.getAlbum(id: id));
    verifyNoMoreInteractions(mockRepository);
  });
}
