part of 'playlist_info_bloc.dart';

@immutable
abstract class PlaylistInfoState extends Equatable {
  final Map<String, dynamic> properties;
  PlaylistInfoState({this.properties = const {'data': []}}) {}

  List<PlaylistInfo> get data =>
      List.castFrom<dynamic, PlaylistInfo>(this.properties['data'] ?? []);

  String get message => this.properties['message'] ?? '';

  @override
  List<Object?> get props => [properties];
}

class PlaylistInfoInitial extends PlaylistInfoState {}

class PlaylistLoading extends PlaylistInfoState {}

class PlaylistLoaded extends PlaylistInfoState {
  final List<PlaylistInfo> playlistList;
  PlaylistLoaded(this.playlistList)
      : super(properties: {
          'data': playlistList,
        });
}

class PlaylistError extends PlaylistInfoState {
  final String message;
  PlaylistError(this.message)
      : super(properties: {
          'message': message,
        });
}
