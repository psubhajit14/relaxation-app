// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumStateStateTearOff {
  const _$AlbumStateStateTearOff();

  _AlbumStateState call({required List<SongInfo> songs}) {
    return _AlbumStateState(
      songs: songs,
    );
  }
}

/// @nodoc
const $AlbumStateState = _$AlbumStateStateTearOff();

/// @nodoc
mixin _$AlbumStateState {
  List<SongInfo> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumStateStateCopyWith<AlbumStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateStateCopyWith<$Res> {
  factory $AlbumStateStateCopyWith(
          AlbumStateState value, $Res Function(AlbumStateState) then) =
      _$AlbumStateStateCopyWithImpl<$Res>;
  $Res call({List<SongInfo> songs});
}

/// @nodoc
class _$AlbumStateStateCopyWithImpl<$Res>
    implements $AlbumStateStateCopyWith<$Res> {
  _$AlbumStateStateCopyWithImpl(this._value, this._then);

  final AlbumStateState _value;
  // ignore: unused_field
  final $Res Function(AlbumStateState) _then;

  @override
  $Res call({
    Object? songs = freezed,
  }) {
    return _then(_value.copyWith(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
    ));
  }
}

/// @nodoc
abstract class _$AlbumStateStateCopyWith<$Res>
    implements $AlbumStateStateCopyWith<$Res> {
  factory _$AlbumStateStateCopyWith(
          _AlbumStateState value, $Res Function(_AlbumStateState) then) =
      __$AlbumStateStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SongInfo> songs});
}

/// @nodoc
class __$AlbumStateStateCopyWithImpl<$Res>
    extends _$AlbumStateStateCopyWithImpl<$Res>
    implements _$AlbumStateStateCopyWith<$Res> {
  __$AlbumStateStateCopyWithImpl(
      _AlbumStateState _value, $Res Function(_AlbumStateState) _then)
      : super(_value, (v) => _then(v as _AlbumStateState));

  @override
  _AlbumStateState get _value => super._value as _AlbumStateState;

  @override
  $Res call({
    Object? songs = freezed,
  }) {
    return _then(_AlbumStateState(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
    ));
  }
}

/// @nodoc

class _$_AlbumStateState implements _AlbumStateState {
  const _$_AlbumStateState({required this.songs});

  @override
  final List<SongInfo> songs;

  @override
  String toString() {
    return 'AlbumStateState(songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumStateState &&
            (identical(other.songs, songs) ||
                const DeepCollectionEquality().equals(other.songs, songs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(songs);

  @JsonKey(ignore: true)
  @override
  _$AlbumStateStateCopyWith<_AlbumStateState> get copyWith =>
      __$AlbumStateStateCopyWithImpl<_AlbumStateState>(this, _$identity);
}

abstract class _AlbumStateState implements AlbumStateState {
  const factory _AlbumStateState({required List<SongInfo> songs}) =
      _$_AlbumStateState;

  @override
  List<SongInfo> get songs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumStateStateCopyWith<_AlbumStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AlbumStateEventTearOff {
  const _$AlbumStateEventTearOff();

  _AlbumLoadSongs loadSongs(String albumid) {
    return _AlbumLoadSongs(
      albumid,
    );
  }
}

/// @nodoc
const $AlbumStateEvent = _$AlbumStateEventTearOff();

/// @nodoc
mixin _$AlbumStateEvent {
  String get albumid => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumid) loadSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumid)? loadSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumLoadSongs value) loadSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumLoadSongs value)? loadSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumStateEventCopyWith<AlbumStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateEventCopyWith<$Res> {
  factory $AlbumStateEventCopyWith(
          AlbumStateEvent value, $Res Function(AlbumStateEvent) then) =
      _$AlbumStateEventCopyWithImpl<$Res>;
  $Res call({String albumid});
}

/// @nodoc
class _$AlbumStateEventCopyWithImpl<$Res>
    implements $AlbumStateEventCopyWith<$Res> {
  _$AlbumStateEventCopyWithImpl(this._value, this._then);

  final AlbumStateEvent _value;
  // ignore: unused_field
  final $Res Function(AlbumStateEvent) _then;

  @override
  $Res call({
    Object? albumid = freezed,
  }) {
    return _then(_value.copyWith(
      albumid: albumid == freezed
          ? _value.albumid
          : albumid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlbumLoadSongsCopyWith<$Res>
    implements $AlbumStateEventCopyWith<$Res> {
  factory _$AlbumLoadSongsCopyWith(
          _AlbumLoadSongs value, $Res Function(_AlbumLoadSongs) then) =
      __$AlbumLoadSongsCopyWithImpl<$Res>;
  @override
  $Res call({String albumid});
}

/// @nodoc
class __$AlbumLoadSongsCopyWithImpl<$Res>
    extends _$AlbumStateEventCopyWithImpl<$Res>
    implements _$AlbumLoadSongsCopyWith<$Res> {
  __$AlbumLoadSongsCopyWithImpl(
      _AlbumLoadSongs _value, $Res Function(_AlbumLoadSongs) _then)
      : super(_value, (v) => _then(v as _AlbumLoadSongs));

  @override
  _AlbumLoadSongs get _value => super._value as _AlbumLoadSongs;

  @override
  $Res call({
    Object? albumid = freezed,
  }) {
    return _then(_AlbumLoadSongs(
      albumid == freezed
          ? _value.albumid
          : albumid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AlbumLoadSongs implements _AlbumLoadSongs {
  const _$_AlbumLoadSongs(this.albumid);

  @override
  final String albumid;

  @override
  String toString() {
    return 'AlbumStateEvent.loadSongs(albumid: $albumid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumLoadSongs &&
            (identical(other.albumid, albumid) ||
                const DeepCollectionEquality().equals(other.albumid, albumid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albumid);

  @JsonKey(ignore: true)
  @override
  _$AlbumLoadSongsCopyWith<_AlbumLoadSongs> get copyWith =>
      __$AlbumLoadSongsCopyWithImpl<_AlbumLoadSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumid) loadSongs,
  }) {
    return loadSongs(albumid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumid)? loadSongs,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs(albumid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumLoadSongs value) loadSongs,
  }) {
    return loadSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumLoadSongs value)? loadSongs,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs(this);
    }
    return orElse();
  }
}

abstract class _AlbumLoadSongs implements AlbumStateEvent {
  const factory _AlbumLoadSongs(String albumid) = _$_AlbumLoadSongs;

  @override
  String get albumid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumLoadSongsCopyWith<_AlbumLoadSongs> get copyWith =>
      throw _privateConstructorUsedError;
}
