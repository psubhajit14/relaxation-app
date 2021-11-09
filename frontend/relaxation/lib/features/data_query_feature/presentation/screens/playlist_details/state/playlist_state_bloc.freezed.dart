// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'playlist_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaylistStateStateTearOff {
  const _$PlaylistStateStateTearOff();

  _PlaylistStateState call(
      {PlaylistInfo? playlist, required List<SongInfo> songs}) {
    return _PlaylistStateState(
      playlist: playlist,
      songs: songs,
    );
  }
}

/// @nodoc
const $PlaylistStateState = _$PlaylistStateStateTearOff();

/// @nodoc
mixin _$PlaylistStateState {
  PlaylistInfo? get playlist => throw _privateConstructorUsedError;
  List<SongInfo> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateStateCopyWith<PlaylistStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateStateCopyWith<$Res> {
  factory $PlaylistStateStateCopyWith(
          PlaylistStateState value, $Res Function(PlaylistStateState) then) =
      _$PlaylistStateStateCopyWithImpl<$Res>;
  $Res call({PlaylistInfo? playlist, List<SongInfo> songs});
}

/// @nodoc
class _$PlaylistStateStateCopyWithImpl<$Res>
    implements $PlaylistStateStateCopyWith<$Res> {
  _$PlaylistStateStateCopyWithImpl(this._value, this._then);

  final PlaylistStateState _value;
  // ignore: unused_field
  final $Res Function(PlaylistStateState) _then;

  @override
  $Res call({
    Object? playlist = freezed,
    Object? songs = freezed,
  }) {
    return _then(_value.copyWith(
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistInfo?,
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
    ));
  }
}

/// @nodoc
abstract class _$PlaylistStateStateCopyWith<$Res>
    implements $PlaylistStateStateCopyWith<$Res> {
  factory _$PlaylistStateStateCopyWith(
          _PlaylistStateState value, $Res Function(_PlaylistStateState) then) =
      __$PlaylistStateStateCopyWithImpl<$Res>;
  @override
  $Res call({PlaylistInfo? playlist, List<SongInfo> songs});
}

/// @nodoc
class __$PlaylistStateStateCopyWithImpl<$Res>
    extends _$PlaylistStateStateCopyWithImpl<$Res>
    implements _$PlaylistStateStateCopyWith<$Res> {
  __$PlaylistStateStateCopyWithImpl(
      _PlaylistStateState _value, $Res Function(_PlaylistStateState) _then)
      : super(_value, (v) => _then(v as _PlaylistStateState));

  @override
  _PlaylistStateState get _value => super._value as _PlaylistStateState;

  @override
  $Res call({
    Object? playlist = freezed,
    Object? songs = freezed,
  }) {
    return _then(_PlaylistStateState(
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistInfo?,
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
    ));
  }
}

/// @nodoc

class _$_PlaylistStateState implements _PlaylistStateState {
  const _$_PlaylistStateState({this.playlist, required this.songs});

  @override
  final PlaylistInfo? playlist;
  @override
  final List<SongInfo> songs;

  @override
  String toString() {
    return 'PlaylistStateState(playlist: $playlist, songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistStateState &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)) &&
            (identical(other.songs, songs) ||
                const DeepCollectionEquality().equals(other.songs, songs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlist) ^
      const DeepCollectionEquality().hash(songs);

  @JsonKey(ignore: true)
  @override
  _$PlaylistStateStateCopyWith<_PlaylistStateState> get copyWith =>
      __$PlaylistStateStateCopyWithImpl<_PlaylistStateState>(this, _$identity);
}

abstract class _PlaylistStateState implements PlaylistStateState {
  const factory _PlaylistStateState(
      {PlaylistInfo? playlist,
      required List<SongInfo> songs}) = _$_PlaylistStateState;

  @override
  PlaylistInfo? get playlist => throw _privateConstructorUsedError;
  @override
  List<SongInfo> get songs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaylistStateStateCopyWith<_PlaylistStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaylistStateEventTearOff {
  const _$PlaylistStateEventTearOff();

  _PlaylistLoadSongs loadSongs(int playlistId) {
    return _PlaylistLoadSongs(
      playlistId,
    );
  }

  _PlaylistRemoveSong removeSong(SongInfo song) {
    return _PlaylistRemoveSong(
      song,
    );
  }
}

/// @nodoc
const $PlaylistStateEvent = _$PlaylistStateEventTearOff();

/// @nodoc
mixin _$PlaylistStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) loadSongs,
    required TResult Function(SongInfo song) removeSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? loadSongs,
    TResult Function(SongInfo song)? removeSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistLoadSongs value) loadSongs,
    required TResult Function(_PlaylistRemoveSong value) removeSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistLoadSongs value)? loadSongs,
    TResult Function(_PlaylistRemoveSong value)? removeSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateEventCopyWith<$Res> {
  factory $PlaylistStateEventCopyWith(
          PlaylistStateEvent value, $Res Function(PlaylistStateEvent) then) =
      _$PlaylistStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaylistStateEventCopyWithImpl<$Res>
    implements $PlaylistStateEventCopyWith<$Res> {
  _$PlaylistStateEventCopyWithImpl(this._value, this._then);

  final PlaylistStateEvent _value;
  // ignore: unused_field
  final $Res Function(PlaylistStateEvent) _then;
}

/// @nodoc
abstract class _$PlaylistLoadSongsCopyWith<$Res> {
  factory _$PlaylistLoadSongsCopyWith(
          _PlaylistLoadSongs value, $Res Function(_PlaylistLoadSongs) then) =
      __$PlaylistLoadSongsCopyWithImpl<$Res>;
  $Res call({int playlistId});
}

/// @nodoc
class __$PlaylistLoadSongsCopyWithImpl<$Res>
    extends _$PlaylistStateEventCopyWithImpl<$Res>
    implements _$PlaylistLoadSongsCopyWith<$Res> {
  __$PlaylistLoadSongsCopyWithImpl(
      _PlaylistLoadSongs _value, $Res Function(_PlaylistLoadSongs) _then)
      : super(_value, (v) => _then(v as _PlaylistLoadSongs));

  @override
  _PlaylistLoadSongs get _value => super._value as _PlaylistLoadSongs;

  @override
  $Res call({
    Object? playlistId = freezed,
  }) {
    return _then(_PlaylistLoadSongs(
      playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlaylistLoadSongs implements _PlaylistLoadSongs {
  const _$_PlaylistLoadSongs(this.playlistId);

  @override
  final int playlistId;

  @override
  String toString() {
    return 'PlaylistStateEvent.loadSongs(playlistId: $playlistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistLoadSongs &&
            (identical(other.playlistId, playlistId) ||
                const DeepCollectionEquality()
                    .equals(other.playlistId, playlistId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlistId);

  @JsonKey(ignore: true)
  @override
  _$PlaylistLoadSongsCopyWith<_PlaylistLoadSongs> get copyWith =>
      __$PlaylistLoadSongsCopyWithImpl<_PlaylistLoadSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) loadSongs,
    required TResult Function(SongInfo song) removeSong,
  }) {
    return loadSongs(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? loadSongs,
    TResult Function(SongInfo song)? removeSong,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs(playlistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistLoadSongs value) loadSongs,
    required TResult Function(_PlaylistRemoveSong value) removeSong,
  }) {
    return loadSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistLoadSongs value)? loadSongs,
    TResult Function(_PlaylistRemoveSong value)? removeSong,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs(this);
    }
    return orElse();
  }
}

abstract class _PlaylistLoadSongs implements PlaylistStateEvent {
  const factory _PlaylistLoadSongs(int playlistId) = _$_PlaylistLoadSongs;

  int get playlistId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaylistLoadSongsCopyWith<_PlaylistLoadSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlaylistRemoveSongCopyWith<$Res> {
  factory _$PlaylistRemoveSongCopyWith(
          _PlaylistRemoveSong value, $Res Function(_PlaylistRemoveSong) then) =
      __$PlaylistRemoveSongCopyWithImpl<$Res>;
  $Res call({SongInfo song});
}

/// @nodoc
class __$PlaylistRemoveSongCopyWithImpl<$Res>
    extends _$PlaylistStateEventCopyWithImpl<$Res>
    implements _$PlaylistRemoveSongCopyWith<$Res> {
  __$PlaylistRemoveSongCopyWithImpl(
      _PlaylistRemoveSong _value, $Res Function(_PlaylistRemoveSong) _then)
      : super(_value, (v) => _then(v as _PlaylistRemoveSong));

  @override
  _PlaylistRemoveSong get _value => super._value as _PlaylistRemoveSong;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_PlaylistRemoveSong(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as SongInfo,
    ));
  }
}

/// @nodoc

class _$_PlaylistRemoveSong implements _PlaylistRemoveSong {
  const _$_PlaylistRemoveSong(this.song);

  @override
  final SongInfo song;

  @override
  String toString() {
    return 'PlaylistStateEvent.removeSong(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistRemoveSong &&
            (identical(other.song, song) ||
                const DeepCollectionEquality().equals(other.song, song)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(song);

  @JsonKey(ignore: true)
  @override
  _$PlaylistRemoveSongCopyWith<_PlaylistRemoveSong> get copyWith =>
      __$PlaylistRemoveSongCopyWithImpl<_PlaylistRemoveSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) loadSongs,
    required TResult Function(SongInfo song) removeSong,
  }) {
    return removeSong(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? loadSongs,
    TResult Function(SongInfo song)? removeSong,
    required TResult orElse(),
  }) {
    if (removeSong != null) {
      return removeSong(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistLoadSongs value) loadSongs,
    required TResult Function(_PlaylistRemoveSong value) removeSong,
  }) {
    return removeSong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistLoadSongs value)? loadSongs,
    TResult Function(_PlaylistRemoveSong value)? removeSong,
    required TResult orElse(),
  }) {
    if (removeSong != null) {
      return removeSong(this);
    }
    return orElse();
  }
}

abstract class _PlaylistRemoveSong implements PlaylistStateEvent {
  const factory _PlaylistRemoveSong(SongInfo song) = _$_PlaylistRemoveSong;

  SongInfo get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaylistRemoveSongCopyWith<_PlaylistRemoveSong> get copyWith =>
      throw _privateConstructorUsedError;
}
