// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_route_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppRouterPathTearOff {
  const _$AppRouterPathTearOff();

  PlayerRouterPath player() {
    return PlayerRouterPath();
  }

  HomeRouterPath home() {
    return HomeRouterPath();
  }

  AlbumRouterPath album({required int albumId}) {
    return AlbumRouterPath(
      albumId: albumId,
    );
  }

  PlaylistRouterPath playlist({required int playlistId}) {
    return PlaylistRouterPath(
      playlistId: playlistId,
    );
  }

  SettingsRouterPath settings() {
    return SettingsRouterPath();
  }

  UnknowmRouterPath unknown() {
    return UnknowmRouterPath();
  }
}

/// @nodoc
const $AppRouterPath = _$AppRouterPathTearOff();

/// @nodoc
mixin _$AppRouterPath {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRouterPathCopyWith<$Res> {
  factory $AppRouterPathCopyWith(
          AppRouterPath value, $Res Function(AppRouterPath) then) =
      _$AppRouterPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouterPathCopyWithImpl<$Res>
    implements $AppRouterPathCopyWith<$Res> {
  _$AppRouterPathCopyWithImpl(this._value, this._then);

  final AppRouterPath _value;
  // ignore: unused_field
  final $Res Function(AppRouterPath) _then;
}

/// @nodoc
abstract class $PlayerRouterPathCopyWith<$Res> {
  factory $PlayerRouterPathCopyWith(
          PlayerRouterPath value, $Res Function(PlayerRouterPath) then) =
      _$PlayerRouterPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $PlayerRouterPathCopyWith<$Res> {
  _$PlayerRouterPathCopyWithImpl(
      PlayerRouterPath _value, $Res Function(PlayerRouterPath) _then)
      : super(_value, (v) => _then(v as PlayerRouterPath));

  @override
  PlayerRouterPath get _value => super._value as PlayerRouterPath;
}

/// @nodoc

class _$PlayerRouterPath implements PlayerRouterPath {
  _$PlayerRouterPath();

  @override
  String toString() {
    return 'AppRouterPath.player()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerRouterPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return player();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (player != null) {
      return player();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return player(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (player != null) {
      return player(this);
    }
    return orElse();
  }
}

abstract class PlayerRouterPath implements AppRouterPath {
  factory PlayerRouterPath() = _$PlayerRouterPath;
}

/// @nodoc
abstract class $HomeRouterPathCopyWith<$Res> {
  factory $HomeRouterPathCopyWith(
          HomeRouterPath value, $Res Function(HomeRouterPath) then) =
      _$HomeRouterPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $HomeRouterPathCopyWith<$Res> {
  _$HomeRouterPathCopyWithImpl(
      HomeRouterPath _value, $Res Function(HomeRouterPath) _then)
      : super(_value, (v) => _then(v as HomeRouterPath));

  @override
  HomeRouterPath get _value => super._value as HomeRouterPath;
}

/// @nodoc

class _$HomeRouterPath implements HomeRouterPath {
  _$HomeRouterPath();

  @override
  String toString() {
    return 'AppRouterPath.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeRouterPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomeRouterPath implements AppRouterPath {
  factory HomeRouterPath() = _$HomeRouterPath;
}

/// @nodoc
abstract class $AlbumRouterPathCopyWith<$Res> {
  factory $AlbumRouterPathCopyWith(
          AlbumRouterPath value, $Res Function(AlbumRouterPath) then) =
      _$AlbumRouterPathCopyWithImpl<$Res>;
  $Res call({int albumId});
}

/// @nodoc
class _$AlbumRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $AlbumRouterPathCopyWith<$Res> {
  _$AlbumRouterPathCopyWithImpl(
      AlbumRouterPath _value, $Res Function(AlbumRouterPath) _then)
      : super(_value, (v) => _then(v as AlbumRouterPath));

  @override
  AlbumRouterPath get _value => super._value as AlbumRouterPath;

  @override
  $Res call({
    Object? albumId = freezed,
  }) {
    return _then(AlbumRouterPath(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AlbumRouterPath implements AlbumRouterPath {
  _$AlbumRouterPath({required this.albumId});

  @override
  final int albumId;

  @override
  String toString() {
    return 'AppRouterPath.album(albumId: $albumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AlbumRouterPath &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality().equals(other.albumId, albumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albumId);

  @JsonKey(ignore: true)
  @override
  $AlbumRouterPathCopyWith<AlbumRouterPath> get copyWith =>
      _$AlbumRouterPathCopyWithImpl<AlbumRouterPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return album(albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (album != null) {
      return album(albumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return album(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (album != null) {
      return album(this);
    }
    return orElse();
  }
}

abstract class AlbumRouterPath implements AppRouterPath {
  factory AlbumRouterPath({required int albumId}) = _$AlbumRouterPath;

  int get albumId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumRouterPathCopyWith<AlbumRouterPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistRouterPathCopyWith<$Res> {
  factory $PlaylistRouterPathCopyWith(
          PlaylistRouterPath value, $Res Function(PlaylistRouterPath) then) =
      _$PlaylistRouterPathCopyWithImpl<$Res>;
  $Res call({int playlistId});
}

/// @nodoc
class _$PlaylistRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $PlaylistRouterPathCopyWith<$Res> {
  _$PlaylistRouterPathCopyWithImpl(
      PlaylistRouterPath _value, $Res Function(PlaylistRouterPath) _then)
      : super(_value, (v) => _then(v as PlaylistRouterPath));

  @override
  PlaylistRouterPath get _value => super._value as PlaylistRouterPath;

  @override
  $Res call({
    Object? playlistId = freezed,
  }) {
    return _then(PlaylistRouterPath(
      playlistId: playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaylistRouterPath implements PlaylistRouterPath {
  _$PlaylistRouterPath({required this.playlistId});

  @override
  final int playlistId;

  @override
  String toString() {
    return 'AppRouterPath.playlist(playlistId: $playlistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistRouterPath &&
            (identical(other.playlistId, playlistId) ||
                const DeepCollectionEquality()
                    .equals(other.playlistId, playlistId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlistId);

  @JsonKey(ignore: true)
  @override
  $PlaylistRouterPathCopyWith<PlaylistRouterPath> get copyWith =>
      _$PlaylistRouterPathCopyWithImpl<PlaylistRouterPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return playlist(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (playlist != null) {
      return playlist(playlistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return playlist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (playlist != null) {
      return playlist(this);
    }
    return orElse();
  }
}

abstract class PlaylistRouterPath implements AppRouterPath {
  factory PlaylistRouterPath({required int playlistId}) = _$PlaylistRouterPath;

  int get playlistId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistRouterPathCopyWith<PlaylistRouterPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsRouterPathCopyWith<$Res> {
  factory $SettingsRouterPathCopyWith(
          SettingsRouterPath value, $Res Function(SettingsRouterPath) then) =
      _$SettingsRouterPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $SettingsRouterPathCopyWith<$Res> {
  _$SettingsRouterPathCopyWithImpl(
      SettingsRouterPath _value, $Res Function(SettingsRouterPath) _then)
      : super(_value, (v) => _then(v as SettingsRouterPath));

  @override
  SettingsRouterPath get _value => super._value as SettingsRouterPath;
}

/// @nodoc

class _$SettingsRouterPath implements SettingsRouterPath {
  _$SettingsRouterPath();

  @override
  String toString() {
    return 'AppRouterPath.settings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsRouterPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return settings();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class SettingsRouterPath implements AppRouterPath {
  factory SettingsRouterPath() = _$SettingsRouterPath;
}

/// @nodoc
abstract class $UnknowmRouterPathCopyWith<$Res> {
  factory $UnknowmRouterPathCopyWith(
          UnknowmRouterPath value, $Res Function(UnknowmRouterPath) then) =
      _$UnknowmRouterPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknowmRouterPathCopyWithImpl<$Res>
    extends _$AppRouterPathCopyWithImpl<$Res>
    implements $UnknowmRouterPathCopyWith<$Res> {
  _$UnknowmRouterPathCopyWithImpl(
      UnknowmRouterPath _value, $Res Function(UnknowmRouterPath) _then)
      : super(_value, (v) => _then(v as UnknowmRouterPath));

  @override
  UnknowmRouterPath get _value => super._value as UnknowmRouterPath;
}

/// @nodoc

class _$UnknowmRouterPath implements UnknowmRouterPath {
  _$UnknowmRouterPath();

  @override
  String toString() {
    return 'AppRouterPath.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknowmRouterPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() player,
    required TResult Function() home,
    required TResult Function(int albumId) album,
    required TResult Function(int playlistId) playlist,
    required TResult Function() settings,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? player,
    TResult Function()? home,
    TResult Function(int albumId)? album,
    TResult Function(int playlistId)? playlist,
    TResult Function()? settings,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerRouterPath value) player,
    required TResult Function(HomeRouterPath value) home,
    required TResult Function(AlbumRouterPath value) album,
    required TResult Function(PlaylistRouterPath value) playlist,
    required TResult Function(SettingsRouterPath value) settings,
    required TResult Function(UnknowmRouterPath value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerRouterPath value)? player,
    TResult Function(HomeRouterPath value)? home,
    TResult Function(AlbumRouterPath value)? album,
    TResult Function(PlaylistRouterPath value)? playlist,
    TResult Function(SettingsRouterPath value)? settings,
    TResult Function(UnknowmRouterPath value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknowmRouterPath implements AppRouterPath {
  factory UnknowmRouterPath() = _$UnknowmRouterPath;
}
