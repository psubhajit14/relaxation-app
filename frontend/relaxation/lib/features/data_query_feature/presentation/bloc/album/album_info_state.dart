part of 'album_info_bloc.dart';

@immutable
class AlbumInfoState extends Equatable {
  final Map<String, dynamic> properties;
  AlbumInfoState({this.properties = const {'data': []}}) {}

  List<AlbumInfo> get data =>
      List.castFrom<dynamic, AlbumInfo>(this.properties['data'] ?? []);

  String get message => this.properties['message'] ?? '';

  @override
  List<Object?> get props => [properties];
}

class AlbumInfoInitial extends AlbumInfoState {}

class AlbumLoading extends AlbumInfoState {}

class AlbumLoaded extends AlbumInfoState {
  final List<AlbumInfo> albumList;
  AlbumLoaded(this.albumList)
      : super(properties: {
          'data': albumList,
        });
}

class AlbumError extends AlbumInfoState {
  final String message;
  AlbumError(this.message)
      : super(properties: {
          'message': message,
        });
}
