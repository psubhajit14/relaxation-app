// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateStateTearOff {
  const _$HomeStateStateTearOff();

  _HomeStateState call(
      {required List<PlaylistInfo> playlists,
      required List<AlbumInfo> albums,
      required List<SongInfo> songs,
      required int toggleSwitchState}) {
    return _HomeStateState(
      playlists: playlists,
      albums: albums,
      songs: songs,
      toggleSwitchState: toggleSwitchState,
    );
  }
}

/// @nodoc
const $HomeStateState = _$HomeStateStateTearOff();

/// @nodoc
mixin _$HomeStateState {
  List<PlaylistInfo> get playlists => throw _privateConstructorUsedError;
  List<AlbumInfo> get albums => throw _privateConstructorUsedError;
  List<SongInfo> get songs => throw _privateConstructorUsedError;
  int get toggleSwitchState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateStateCopyWith<HomeStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateStateCopyWith<$Res> {
  factory $HomeStateStateCopyWith(
          HomeStateState value, $Res Function(HomeStateState) then) =
      _$HomeStateStateCopyWithImpl<$Res>;
  $Res call(
      {List<PlaylistInfo> playlists,
      List<AlbumInfo> albums,
      List<SongInfo> songs,
      int toggleSwitchState});
}

/// @nodoc
class _$HomeStateStateCopyWithImpl<$Res>
    implements $HomeStateStateCopyWith<$Res> {
  _$HomeStateStateCopyWithImpl(this._value, this._then);

  final HomeStateState _value;
  // ignore: unused_field
  final $Res Function(HomeStateState) _then;

  @override
  $Res call({
    Object? playlists = freezed,
    Object? albums = freezed,
    Object? songs = freezed,
    Object? toggleSwitchState = freezed,
  }) {
    return _then(_value.copyWith(
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<PlaylistInfo>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumInfo>,
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
      toggleSwitchState: toggleSwitchState == freezed
          ? _value.toggleSwitchState
          : toggleSwitchState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateStateCopyWith<$Res>
    implements $HomeStateStateCopyWith<$Res> {
  factory _$HomeStateStateCopyWith(
          _HomeStateState value, $Res Function(_HomeStateState) then) =
      __$HomeStateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PlaylistInfo> playlists,
      List<AlbumInfo> albums,
      List<SongInfo> songs,
      int toggleSwitchState});
}

/// @nodoc
class __$HomeStateStateCopyWithImpl<$Res>
    extends _$HomeStateStateCopyWithImpl<$Res>
    implements _$HomeStateStateCopyWith<$Res> {
  __$HomeStateStateCopyWithImpl(
      _HomeStateState _value, $Res Function(_HomeStateState) _then)
      : super(_value, (v) => _then(v as _HomeStateState));

  @override
  _HomeStateState get _value => super._value as _HomeStateState;

  @override
  $Res call({
    Object? playlists = freezed,
    Object? albums = freezed,
    Object? songs = freezed,
    Object? toggleSwitchState = freezed,
  }) {
    return _then(_HomeStateState(
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<PlaylistInfo>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumInfo>,
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongInfo>,
      toggleSwitchState: toggleSwitchState == freezed
          ? _value.toggleSwitchState
          : toggleSwitchState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeStateState
    with DiagnosticableTreeMixin
    implements _HomeStateState {
  const _$_HomeStateState(
      {required this.playlists,
      required this.albums,
      required this.songs,
      required this.toggleSwitchState});

  @override
  final List<PlaylistInfo> playlists;
  @override
  final List<AlbumInfo> albums;
  @override
  final List<SongInfo> songs;
  @override
  final int toggleSwitchState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateState(playlists: $playlists, albums: $albums, songs: $songs, toggleSwitchState: $toggleSwitchState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStateState'))
      ..add(DiagnosticsProperty('playlists', playlists))
      ..add(DiagnosticsProperty('albums', albums))
      ..add(DiagnosticsProperty('songs', songs))
      ..add(DiagnosticsProperty('toggleSwitchState', toggleSwitchState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStateState &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)) &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)) &&
            (identical(other.songs, songs) ||
                const DeepCollectionEquality().equals(other.songs, songs)) &&
            (identical(other.toggleSwitchState, toggleSwitchState) ||
                const DeepCollectionEquality()
                    .equals(other.toggleSwitchState, toggleSwitchState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlists) ^
      const DeepCollectionEquality().hash(albums) ^
      const DeepCollectionEquality().hash(songs) ^
      const DeepCollectionEquality().hash(toggleSwitchState);

  @JsonKey(ignore: true)
  @override
  _$HomeStateStateCopyWith<_HomeStateState> get copyWith =>
      __$HomeStateStateCopyWithImpl<_HomeStateState>(this, _$identity);
}

abstract class _HomeStateState implements HomeStateState {
  const factory _HomeStateState(
      {required List<PlaylistInfo> playlists,
      required List<AlbumInfo> albums,
      required List<SongInfo> songs,
      required int toggleSwitchState}) = _$_HomeStateState;

  @override
  List<PlaylistInfo> get playlists => throw _privateConstructorUsedError;
  @override
  List<AlbumInfo> get albums => throw _privateConstructorUsedError;
  @override
  List<SongInfo> get songs => throw _privateConstructorUsedError;
  @override
  int get toggleSwitchState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateStateCopyWith<_HomeStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateEventTearOff {
  const _$HomeStateEventTearOff();

  _HomeLoadInitialData loadInitial() {
    return const _HomeLoadInitialData();
  }

  _HomeLoadPlaylist loadPlaylist() {
    return const _HomeLoadPlaylist();
  }

  _HomeLoadAlbums loadAlbums() {
    return const _HomeLoadAlbums();
  }

  _HomeLoadSongs loadSongs() {
    return const _HomeLoadSongs();
  }

  _HomeToggleSwitch toggleSwitch(int index) {
    return _HomeToggleSwitch(
      index,
    );
  }

  _HomeAddSongToPlaylist addSongToPlaylist(
      {required PlaylistInfo playlist, required SongInfo song}) {
    return _HomeAddSongToPlaylist(
      playlist: playlist,
      song: song,
    );
  }

  _HomeCreatePlaylist createPlaylist(String name) {
    return _HomeCreatePlaylist(
      name,
    );
  }

  _HomeRemovePlaylist removePlaylist(PlaylistInfo playlist) {
    return _HomeRemovePlaylist(
      playlist,
    );
  }
}

/// @nodoc
const $HomeStateEvent = _$HomeStateEventTearOff();

/// @nodoc
mixin _$HomeStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateEventCopyWith<$Res> {
  factory $HomeStateEventCopyWith(
          HomeStateEvent value, $Res Function(HomeStateEvent) then) =
      _$HomeStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateEventCopyWithImpl<$Res>
    implements $HomeStateEventCopyWith<$Res> {
  _$HomeStateEventCopyWithImpl(this._value, this._then);

  final HomeStateEvent _value;
  // ignore: unused_field
  final $Res Function(HomeStateEvent) _then;
}

/// @nodoc
abstract class _$HomeLoadInitialDataCopyWith<$Res> {
  factory _$HomeLoadInitialDataCopyWith(_HomeLoadInitialData value,
          $Res Function(_HomeLoadInitialData) then) =
      __$HomeLoadInitialDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadInitialDataCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeLoadInitialDataCopyWith<$Res> {
  __$HomeLoadInitialDataCopyWithImpl(
      _HomeLoadInitialData _value, $Res Function(_HomeLoadInitialData) _then)
      : super(_value, (v) => _then(v as _HomeLoadInitialData));

  @override
  _HomeLoadInitialData get _value => super._value as _HomeLoadInitialData;
}

/// @nodoc

class _$_HomeLoadInitialData
    with DiagnosticableTreeMixin
    implements _HomeLoadInitialData {
  const _$_HomeLoadInitialData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.loadInitial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeStateEvent.loadInitial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeLoadInitialData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return loadInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return loadInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadInitialData implements HomeStateEvent {
  const factory _HomeLoadInitialData() = _$_HomeLoadInitialData;
}

/// @nodoc
abstract class _$HomeLoadPlaylistCopyWith<$Res> {
  factory _$HomeLoadPlaylistCopyWith(
          _HomeLoadPlaylist value, $Res Function(_HomeLoadPlaylist) then) =
      __$HomeLoadPlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadPlaylistCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeLoadPlaylistCopyWith<$Res> {
  __$HomeLoadPlaylistCopyWithImpl(
      _HomeLoadPlaylist _value, $Res Function(_HomeLoadPlaylist) _then)
      : super(_value, (v) => _then(v as _HomeLoadPlaylist));

  @override
  _HomeLoadPlaylist get _value => super._value as _HomeLoadPlaylist;
}

/// @nodoc

class _$_HomeLoadPlaylist
    with DiagnosticableTreeMixin
    implements _HomeLoadPlaylist {
  const _$_HomeLoadPlaylist();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.loadPlaylist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeStateEvent.loadPlaylist'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeLoadPlaylist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return loadPlaylist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadPlaylist != null) {
      return loadPlaylist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return loadPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadPlaylist != null) {
      return loadPlaylist(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadPlaylist implements HomeStateEvent {
  const factory _HomeLoadPlaylist() = _$_HomeLoadPlaylist;
}

/// @nodoc
abstract class _$HomeLoadAlbumsCopyWith<$Res> {
  factory _$HomeLoadAlbumsCopyWith(
          _HomeLoadAlbums value, $Res Function(_HomeLoadAlbums) then) =
      __$HomeLoadAlbumsCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadAlbumsCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeLoadAlbumsCopyWith<$Res> {
  __$HomeLoadAlbumsCopyWithImpl(
      _HomeLoadAlbums _value, $Res Function(_HomeLoadAlbums) _then)
      : super(_value, (v) => _then(v as _HomeLoadAlbums));

  @override
  _HomeLoadAlbums get _value => super._value as _HomeLoadAlbums;
}

/// @nodoc

class _$_HomeLoadAlbums
    with DiagnosticableTreeMixin
    implements _HomeLoadAlbums {
  const _$_HomeLoadAlbums();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.loadAlbums()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeStateEvent.loadAlbums'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeLoadAlbums);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return loadAlbums();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadAlbums != null) {
      return loadAlbums();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return loadAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadAlbums != null) {
      return loadAlbums(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadAlbums implements HomeStateEvent {
  const factory _HomeLoadAlbums() = _$_HomeLoadAlbums;
}

/// @nodoc
abstract class _$HomeLoadSongsCopyWith<$Res> {
  factory _$HomeLoadSongsCopyWith(
          _HomeLoadSongs value, $Res Function(_HomeLoadSongs) then) =
      __$HomeLoadSongsCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadSongsCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeLoadSongsCopyWith<$Res> {
  __$HomeLoadSongsCopyWithImpl(
      _HomeLoadSongs _value, $Res Function(_HomeLoadSongs) _then)
      : super(_value, (v) => _then(v as _HomeLoadSongs));

  @override
  _HomeLoadSongs get _value => super._value as _HomeLoadSongs;
}

/// @nodoc

class _$_HomeLoadSongs with DiagnosticableTreeMixin implements _HomeLoadSongs {
  const _$_HomeLoadSongs();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.loadSongs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeStateEvent.loadSongs'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeLoadSongs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return loadSongs();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return loadSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (loadSongs != null) {
      return loadSongs(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadSongs implements HomeStateEvent {
  const factory _HomeLoadSongs() = _$_HomeLoadSongs;
}

/// @nodoc
abstract class _$HomeToggleSwitchCopyWith<$Res> {
  factory _$HomeToggleSwitchCopyWith(
          _HomeToggleSwitch value, $Res Function(_HomeToggleSwitch) then) =
      __$HomeToggleSwitchCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$HomeToggleSwitchCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeToggleSwitchCopyWith<$Res> {
  __$HomeToggleSwitchCopyWithImpl(
      _HomeToggleSwitch _value, $Res Function(_HomeToggleSwitch) _then)
      : super(_value, (v) => _then(v as _HomeToggleSwitch));

  @override
  _HomeToggleSwitch get _value => super._value as _HomeToggleSwitch;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_HomeToggleSwitch(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeToggleSwitch
    with DiagnosticableTreeMixin
    implements _HomeToggleSwitch {
  const _$_HomeToggleSwitch(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.toggleSwitch(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStateEvent.toggleSwitch'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeToggleSwitch &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$HomeToggleSwitchCopyWith<_HomeToggleSwitch> get copyWith =>
      __$HomeToggleSwitchCopyWithImpl<_HomeToggleSwitch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return toggleSwitch(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (toggleSwitch != null) {
      return toggleSwitch(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return toggleSwitch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (toggleSwitch != null) {
      return toggleSwitch(this);
    }
    return orElse();
  }
}

abstract class _HomeToggleSwitch implements HomeStateEvent {
  const factory _HomeToggleSwitch(int index) = _$_HomeToggleSwitch;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeToggleSwitchCopyWith<_HomeToggleSwitch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeAddSongToPlaylistCopyWith<$Res> {
  factory _$HomeAddSongToPlaylistCopyWith(_HomeAddSongToPlaylist value,
          $Res Function(_HomeAddSongToPlaylist) then) =
      __$HomeAddSongToPlaylistCopyWithImpl<$Res>;
  $Res call({PlaylistInfo playlist, SongInfo song});
}

/// @nodoc
class __$HomeAddSongToPlaylistCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeAddSongToPlaylistCopyWith<$Res> {
  __$HomeAddSongToPlaylistCopyWithImpl(_HomeAddSongToPlaylist _value,
      $Res Function(_HomeAddSongToPlaylist) _then)
      : super(_value, (v) => _then(v as _HomeAddSongToPlaylist));

  @override
  _HomeAddSongToPlaylist get _value => super._value as _HomeAddSongToPlaylist;

  @override
  $Res call({
    Object? playlist = freezed,
    Object? song = freezed,
  }) {
    return _then(_HomeAddSongToPlaylist(
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistInfo,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as SongInfo,
    ));
  }
}

/// @nodoc

class _$_HomeAddSongToPlaylist
    with DiagnosticableTreeMixin
    implements _HomeAddSongToPlaylist {
  const _$_HomeAddSongToPlaylist({required this.playlist, required this.song});

  @override
  final PlaylistInfo playlist;
  @override
  final SongInfo song;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.addSongToPlaylist(playlist: $playlist, song: $song)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStateEvent.addSongToPlaylist'))
      ..add(DiagnosticsProperty('playlist', playlist))
      ..add(DiagnosticsProperty('song', song));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeAddSongToPlaylist &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)) &&
            (identical(other.song, song) ||
                const DeepCollectionEquality().equals(other.song, song)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlist) ^
      const DeepCollectionEquality().hash(song);

  @JsonKey(ignore: true)
  @override
  _$HomeAddSongToPlaylistCopyWith<_HomeAddSongToPlaylist> get copyWith =>
      __$HomeAddSongToPlaylistCopyWithImpl<_HomeAddSongToPlaylist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return addSongToPlaylist(playlist, song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (addSongToPlaylist != null) {
      return addSongToPlaylist(playlist, song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return addSongToPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (addSongToPlaylist != null) {
      return addSongToPlaylist(this);
    }
    return orElse();
  }
}

abstract class _HomeAddSongToPlaylist implements HomeStateEvent {
  const factory _HomeAddSongToPlaylist(
      {required PlaylistInfo playlist,
      required SongInfo song}) = _$_HomeAddSongToPlaylist;

  PlaylistInfo get playlist => throw _privateConstructorUsedError;
  SongInfo get song => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeAddSongToPlaylistCopyWith<_HomeAddSongToPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeCreatePlaylistCopyWith<$Res> {
  factory _$HomeCreatePlaylistCopyWith(
          _HomeCreatePlaylist value, $Res Function(_HomeCreatePlaylist) then) =
      __$HomeCreatePlaylistCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$HomeCreatePlaylistCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeCreatePlaylistCopyWith<$Res> {
  __$HomeCreatePlaylistCopyWithImpl(
      _HomeCreatePlaylist _value, $Res Function(_HomeCreatePlaylist) _then)
      : super(_value, (v) => _then(v as _HomeCreatePlaylist));

  @override
  _HomeCreatePlaylist get _value => super._value as _HomeCreatePlaylist;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_HomeCreatePlaylist(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeCreatePlaylist
    with DiagnosticableTreeMixin
    implements _HomeCreatePlaylist {
  const _$_HomeCreatePlaylist(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.createPlaylist(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStateEvent.createPlaylist'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeCreatePlaylist &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$HomeCreatePlaylistCopyWith<_HomeCreatePlaylist> get copyWith =>
      __$HomeCreatePlaylistCopyWithImpl<_HomeCreatePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return createPlaylist(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (createPlaylist != null) {
      return createPlaylist(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return createPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (createPlaylist != null) {
      return createPlaylist(this);
    }
    return orElse();
  }
}

abstract class _HomeCreatePlaylist implements HomeStateEvent {
  const factory _HomeCreatePlaylist(String name) = _$_HomeCreatePlaylist;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeCreatePlaylistCopyWith<_HomeCreatePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeRemovePlaylistCopyWith<$Res> {
  factory _$HomeRemovePlaylistCopyWith(
          _HomeRemovePlaylist value, $Res Function(_HomeRemovePlaylist) then) =
      __$HomeRemovePlaylistCopyWithImpl<$Res>;
  $Res call({PlaylistInfo playlist});
}

/// @nodoc
class __$HomeRemovePlaylistCopyWithImpl<$Res>
    extends _$HomeStateEventCopyWithImpl<$Res>
    implements _$HomeRemovePlaylistCopyWith<$Res> {
  __$HomeRemovePlaylistCopyWithImpl(
      _HomeRemovePlaylist _value, $Res Function(_HomeRemovePlaylist) _then)
      : super(_value, (v) => _then(v as _HomeRemovePlaylist));

  @override
  _HomeRemovePlaylist get _value => super._value as _HomeRemovePlaylist;

  @override
  $Res call({
    Object? playlist = freezed,
  }) {
    return _then(_HomeRemovePlaylist(
      playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistInfo,
    ));
  }
}

/// @nodoc

class _$_HomeRemovePlaylist
    with DiagnosticableTreeMixin
    implements _HomeRemovePlaylist {
  const _$_HomeRemovePlaylist(this.playlist);

  @override
  final PlaylistInfo playlist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStateEvent.removePlaylist(playlist: $playlist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStateEvent.removePlaylist'))
      ..add(DiagnosticsProperty('playlist', playlist));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeRemovePlaylist &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlist);

  @JsonKey(ignore: true)
  @override
  _$HomeRemovePlaylistCopyWith<_HomeRemovePlaylist> get copyWith =>
      __$HomeRemovePlaylistCopyWithImpl<_HomeRemovePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadPlaylist,
    required TResult Function() loadAlbums,
    required TResult Function() loadSongs,
    required TResult Function(int index) toggleSwitch,
    required TResult Function(PlaylistInfo playlist, SongInfo song)
        addSongToPlaylist,
    required TResult Function(String name) createPlaylist,
    required TResult Function(PlaylistInfo playlist) removePlaylist,
  }) {
    return removePlaylist(playlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadPlaylist,
    TResult Function()? loadAlbums,
    TResult Function()? loadSongs,
    TResult Function(int index)? toggleSwitch,
    TResult Function(PlaylistInfo playlist, SongInfo song)? addSongToPlaylist,
    TResult Function(String name)? createPlaylist,
    TResult Function(PlaylistInfo playlist)? removePlaylist,
    required TResult orElse(),
  }) {
    if (removePlaylist != null) {
      return removePlaylist(playlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadInitialData value) loadInitial,
    required TResult Function(_HomeLoadPlaylist value) loadPlaylist,
    required TResult Function(_HomeLoadAlbums value) loadAlbums,
    required TResult Function(_HomeLoadSongs value) loadSongs,
    required TResult Function(_HomeToggleSwitch value) toggleSwitch,
    required TResult Function(_HomeAddSongToPlaylist value) addSongToPlaylist,
    required TResult Function(_HomeCreatePlaylist value) createPlaylist,
    required TResult Function(_HomeRemovePlaylist value) removePlaylist,
  }) {
    return removePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadInitialData value)? loadInitial,
    TResult Function(_HomeLoadPlaylist value)? loadPlaylist,
    TResult Function(_HomeLoadAlbums value)? loadAlbums,
    TResult Function(_HomeLoadSongs value)? loadSongs,
    TResult Function(_HomeToggleSwitch value)? toggleSwitch,
    TResult Function(_HomeAddSongToPlaylist value)? addSongToPlaylist,
    TResult Function(_HomeCreatePlaylist value)? createPlaylist,
    TResult Function(_HomeRemovePlaylist value)? removePlaylist,
    required TResult orElse(),
  }) {
    if (removePlaylist != null) {
      return removePlaylist(this);
    }
    return orElse();
  }
}

abstract class _HomeRemovePlaylist implements HomeStateEvent {
  const factory _HomeRemovePlaylist(PlaylistInfo playlist) =
      _$_HomeRemovePlaylist;

  PlaylistInfo get playlist => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeRemovePlaylistCopyWith<_HomeRemovePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}
