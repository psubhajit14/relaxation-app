import 'package:equatable/equatable.dart';

const String K_NO_DATA_FOUND = "No Data Found";
const String K_NO_SONG_FOUND = "No Song Found";
const String K_NO_ALBUM_FOUND = "No Album Found";
const String K_NO_PLAYLIST_FOUND = "No Playlist Found";

abstract class Failure extends Equatable {
  final String message;
  Failure({required this.message});
  @override
  List<Object?> get props => [message];
}

class NoDataFoundFailure extends Failure {
  NoDataFoundFailure() : super(message: K_NO_DATA_FOUND);
}

class NoSongFoundFailure extends Failure {
  NoSongFoundFailure() : super(message: K_NO_SONG_FOUND);
}

class NoPlayListFoundFailure extends Failure {
  NoPlayListFoundFailure() : super(message: K_NO_PLAYLIST_FOUND);
}

class NoAlbumFoundFailure extends Failure {
  NoAlbumFoundFailure() : super(message: K_NO_ALBUM_FOUND);
}
