part of 'song_info_bloc.dart';

@immutable
abstract class SongInfoState extends Equatable {
  final Map<String, dynamic> properties;
  SongInfoState({this.properties = const {'data': []}});

  List<SongInfo> get data =>
      List.castFrom<dynamic, SongInfo>(this.properties['data'] ?? []);

  String get message => this.properties['message'] ?? '';

  @override
  List<Object?> get props => [properties];
}

class SongInfoInitial extends SongInfoState {}

class SongLoading extends SongInfoState {}

class SongLoaded extends SongInfoState {
  final List<SongInfo> songList;
  SongLoaded(this.songList)
      : super(properties: {
          'data': songList,
        });
}

class SongError extends SongInfoState {
  final String message;
  SongError(this.message)
      : super(properties: {
          'message': message,
        });
}
