import 'package:equatable/equatable.dart';

final String kNO_DATA_FOUND = "No Data Found";
final String kNO_SONG_FOUND = "No Song Found";
final String kNO_ALBUM_FOUND = "No Album Found";
final String kNO_PLAYLIST_FOUND = "No Playlist Found";

abstract class Failure extends Equatable {
  final String message;
  Failure({required this.message});
  @override
  List<Object?> get props => [message];
}

class NoDataFoundFailure extends Failure {
  NoDataFoundFailure() : super(message: kNO_DATA_FOUND);
}

class NoSongFoundFailure extends Failure {
  NoSongFoundFailure() : super(message: kNO_SONG_FOUND);
}

class NoPlayListFoundFailure extends Failure {
  NoPlayListFoundFailure() : super(message: kNO_PLAYLIST_FOUND);
}

class NoAlbumFoundFailure extends Failure {
  NoAlbumFoundFailure() : super(message: kNO_ALBUM_FOUND);
}
