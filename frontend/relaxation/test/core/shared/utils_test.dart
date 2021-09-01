import 'package:flutter_test/flutter_test.dart';
import 'package:relaxation/core/utils.dart';
import 'package:relaxation/features/data_query_feature/data/models/models.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';

void main() {
  late SongInfo songInfo;
  late SongInfoModel songInfoModel;
  final List<SongInfo> songInfoList = [];
  final List<SongInfoModel> songInfoModelList = [];
  setUp(() {
    String songId = "6";
    String path = "file://song.mp3";
    String songTitle = "songTitle";
    String duration = "4m";
    String artist = "artist";
    String album = "7";
    String fileSize = "2mb";
    String artworkPath = "file://artwork.png";
    songInfoModel = SongInfoModel(
        id: songId,
        path: path,
        title: songTitle,
        duration: duration,
        artist: artist,
        album: album,
        fileSize: fileSize,
        artworkPath: artworkPath);
    songInfoModelList.add(songInfoModel);
    songInfo = songInfoModel;
    songInfoList.add(songInfo);
  });
  test(
    'should populate childlist value to parentList Value',
    () async {
      // arrange
      // act
      final result = Utils.populateChild(songInfoModelList);
      // assert
      expect(result.first, isInstanceOf<SongInfo>());
      expect(result, songInfoList);
    },
  );
}
