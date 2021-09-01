import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  Failure({required this.message});
  @override
  List<Object?> get props => [message];
}

class NoDataFoundFailure extends Failure {
  NoDataFoundFailure() : super(message: "No Data Found");
}

class NoSongFoundFailure extends Failure {
  NoSongFoundFailure() : super(message: "No Song Found");
}

class NoPlayListFoundFailure extends Failure {
  NoPlayListFoundFailure() : super(message: "No Playlist Found");
}

class NoAlbumFoundFailure extends Failure {
  NoAlbumFoundFailure() : super(message: "No Album Found");
}
