part of 'album_info_bloc.dart';

@immutable
abstract class AlbumInfoState extends CustomState {}

class AlbumInfoInitial extends AlbumInfoState {}

class AlbumLoading extends AlbumInfoState {}

class AlbumLoaded extends AlbumInfoState {
  final List<AlbumInfo> albumList;
  AlbumLoaded(this.albumList);
}

class AlbumError extends AlbumInfoState {
  final String message;
  AlbumError(this.message);
}
